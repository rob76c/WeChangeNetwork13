#!/bin/bash
#
# Register and enroll all identities needed for the Token network.

set -Exeuo pipefail

# admin is rcaadmin...
# Fabric Smart Client node identities (identity of the node, used when talking to other nodes)
for node in issuer auditor owner1 owner2
do
  FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name fsc${node} --id.secret password --id.type client --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
  FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://fsc${node}:password@wechangeappusers-ca.localho.st:443 -M "$(pwd)/keys/${node}/fsc/msp" --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem

  # make private key name predictable
  mv "$(pwd)/keys/${node}/fsc/msp/keystore/"* "$(pwd)/keys/${node}/fsc/msp/keystore/priv_sk"
done

# Issuer and Auditor wallet users (non-anonymous)
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name auditor --id.secret password --id.type client --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://auditor:password@wechangeappusers-ca.localho.st:443 -M "$(pwd)/keys/auditor/aud/msp" --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem

FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name issuer --id.secret password --id.type client --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://issuer:password@wechangeappusers-ca.localho.st:443 -M "$(pwd)/keys/issuer/iss/msp" --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem

# Owner wallet users (pseudonymous) on the owner1 node
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name alice --id.secret password --id.type client --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://alice:password@wechangeappusers-ca.localho.st:443  -M "$(pwd)/keys/owner1/wallet/alice/msp" --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem

FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name bob --id.secret password --id.type client --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://bob:password@wechangeappusers-ca.localho.st:443 -M "$(pwd)/keys/owner1/wallet/bob/msp" --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem

# Owner wallet users (pseudonymous) on the owner2 node (change to --idemix.curve amcl.Fp256bn if runs the chaincode with this...)
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name carlos --id.secret password --id.type client --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://carlos:password@wechangeappusers-ca.localho.st:443  -M "$(pwd)/keys/owner2/wallet/carlos/msp" --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem

FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client register --id.name dan --id.secret password --id.type client --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem
FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin fabric-ca-client enroll -u https://dan:password@wechangeappusers-ca.localho.st:443 -M "$(pwd)/keys/owner2/wallet/dan/msp" --enrollment.type idemix --idemix.curve amcl.Fp256bn --tls.certfiles /Users/lemillions/Desktop/WeChangeNetwork13/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem