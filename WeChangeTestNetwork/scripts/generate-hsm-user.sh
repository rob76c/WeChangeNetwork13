#!/usr/bin/env bash
set -eo pipefail
# script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
# define the CA setup
CA_HOST=localho.st
CA_URL=${CA_HOST}:443

TLS_CERT="/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem"

LocateHsmLib() {
  if [[ -n "${PKCS11_LIB}" && -f "${PKCS11_LIB}" ]]; then
    echo "${PKCS11_LIB}"
    return
  fi

  local POSSIBLE_LIB_LOC=( \
    '/usr/lib/softhsm/libsofthsm2.so' \
    '/usr/lib/x86_64-linux-gnu/softhsm/libsofthsm2.so' \
    '/usr/local/lib/softhsm/libsofthsm2.so' \
    '/usr/lib/libacsp-pkcs11.so' \
    '/usr/local/Cellar/softhsm/2.6.1/lib/softhsm/libsofthsm2.so' \
    '/opt/homebrew/lib/softhsm/libsofthsm2.so' \
  )
  for TEST_LIB in "${POSSIBLE_LIB_LOC[@]}"; do
    if [ -f "${TEST_LIB}" ]; then
      echo "${TEST_LIB}"
      return
    fi
  done
}

HSM2_LIB=$(LocateHsmLib)
[ -z "$HSM2_LIB" ] && echo No SoftHSM PKCS11 Library found, ensure you have installed softhsm2 && exit 1

# create a softhsm2.conf file if one doesn't exist
HSM2_CONF=$HOME/softhsm2.conf
[ ! -f "$HSM2_CONF" ] && echo directories.tokendir = /tmp > "$HSM2_CONF"

# Update the client config file to point to the softhsm pkcs11 library
# which must be in $HOME/softhsm directory

CLIENT_CONFIG_TEMPLATE=/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin/fabric-ca-client-config.yaml
CLIENT_CONFIG=/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin/fabric-ca-client-config.yaml
## cp $CLIENT_CONFIG_TEMPLATE $CLIENT_CONFIG

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' s+REPLACE_ME_HSMLIB+"${HSM2_LIB}"+g $CLIENT_CONFIG
else
  sed -i s+REPLACE_ME_HSMLIB+"${HSM2_LIB}"+g $CLIENT_CONFIG
fi

# create the users, remove any existing users
CRYPTO_PATH=/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/crypto-material/hsm
[ -d "$CRYPTO_PATH" ] && rm -fr "$CRYPTO_PATH"

# user passed in as parameter
CAADMIN="robertcarrera2"
CAADMIN_PW="charlie"
HSMUSER=$1

##FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin SOFTHSM2_CONF=$HSM2_CONF fabric-ca-client enroll -u https://$CAADMIN:$CAADMIN_PW@$CA_URL --mspdir "/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin/msp" --tls.certfiles "/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/cas/wechangeappusers-ca/tlsca-cert.pem"

##FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin SOFTHSM2_CONF=$HSM2_CONF fabric-ca-client register -c /Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin/fabric-ca-client-config-hsm.yaml --mspdir "/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin/msp" --id.name "robertcarrera2" --id.secret "charlie" --id.type client --id.maxenrollments 0 -u https://robertcarrera2:charlie@wechangeappusers-ca.localho.st:443 --tls.certfiles "$TLS_CERT" && echo user probably already registered, continuing

FABRIC_CA_CLIENT_HOME=/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin SOFTHSM2_CONF=$HSM2_CONF  fabric-ca-client enroll -c /Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/wechangeappusersadmin/fabric-ca-client-config-hsm.yaml -u https://robertcarrera2:charlie@wechangeappusers-ca.localho.st:443 --mspdir "/Users/lemillions/Desktop/WeChangeNetwork11/WeChangeTestNetwork/build/enrollments/wechangeappusers/users/robertcarrera" --tls.certfiles "$TLS_CERT"

