
```
WeChangeNetwork11
├─ .DS_Store
├─ .vscode
│  └─ settings.json
├─ WeChangeTestNetwork
│  ├─ README.md
│  ├─ application-go
│  │  ├─ go.mod
│  │  ├─ go.sum
│  │  └─ hsm-sample.go
│  ├─ bin
│  │  ├─ configtxgen
│  │  ├─ configtxlator
│  │  ├─ cryptogen
│  │  ├─ discover
│  │  ├─ fabric-ca-client
│  │  ├─ fabric-ca-server
│  │  ├─ ledgerutil
│  │  ├─ orderer
│  │  ├─ osnadmin
│  │  └─ peer
│  ├─ build
│  │  ├─ cas
│  │  │  ├─ orderer-ca
│  │  │  │  └─ tlsca-cert.pem
│  │  │  ├─ wechange-ca
│  │  │  │  └─ tlsca-cert.pem
│  │  │  └─ wechangeappusers-ca
│  │  │     └─ tlsca-cert.pem
│  │  ├─ channel-msp
│  │  │  ├─ ordererOrganizations
│  │  │  │  └─ orderer
│  │  │  │     ├─ msp
│  │  │  │     │  ├─ cacerts
│  │  │  │     │  │  └─ ca-signcert.pem
│  │  │  │     │  ├─ config.yaml
│  │  │  │     │  └─ tlscacerts
│  │  │  │     │     └─ tlsca-signcert.pem
│  │  │  │     └─ orderers
│  │  │  │        ├─ orderer-orderer1
│  │  │  │        │  └─ tls
│  │  │  │        │     └─ signcerts
│  │  │  │        │        └─ tls-cert.pem
│  │  │  │        ├─ orderer-orderer2
│  │  │  │        │  └─ tls
│  │  │  │        │     └─ signcerts
│  │  │  │        │        └─ tls-cert.pem
│  │  │  │        └─ orderer-orderer3
│  │  │  │           └─ tls
│  │  │  │              └─ signcerts
│  │  │  │                 └─ tls-cert.pem
│  │  │  └─ peerOrganizations
│  │  │     ├─ wechange
│  │  │     │  └─ msp
│  │  │     │     ├─ cacerts
│  │  │     │     │  └─ ca-signcert.pem
│  │  │     │     ├─ config.yaml
│  │  │     │     └─ tlscacerts
│  │  │     │        └─ tlsca-signcert.pem
│  │  │     └─ wechangeappusers
│  │  │        └─ msp
│  │  │           ├─ cacerts
│  │  │           │  └─ ca-signcert.pem
│  │  │           ├─ config.yaml
│  │  │           └─ tlscacerts
│  │  │              └─ tlsca-signcert.pem
│  │  ├─ configtx.yaml
│  │  ├─ enrollments
│  │  │  ├─ orderer
│  │  │  │  └─ users
│  │  │  │     ├─ ordereradmin
│  │  │  │     │  ├─ fabric-ca-client-config.yaml
│  │  │  │     │  └─ msp
│  │  │  │     │     ├─ IssuerPublicKey
│  │  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │  │     │     ├─ cacerts
│  │  │  │     │     │  └─ orderer-ca-localho-st-443.pem
│  │  │  │     │     ├─ config.yaml
│  │  │  │     │     ├─ keystore
│  │  │  │     │     │  └─ key.pem
│  │  │  │     │     ├─ signcerts
│  │  │  │     │     │  └─ cert.pem
│  │  │  │     │     └─ user
│  │  │  │     └─ rcaadmin
│  │  │  │        └─ msp
│  │  │  │           ├─ IssuerPublicKey
│  │  │  │           ├─ IssuerRevocationPublicKey
│  │  │  │           ├─ cacerts
│  │  │  │           │  └─ orderer-ca-localho-st-443.pem
│  │  │  │           ├─ keystore
│  │  │  │           │  └─ dbd54f4a0f13c64a954a1e23d35cf8fb1f3bc42b4a5f13af1039eb8853be5a95_sk
│  │  │  │           ├─ signcerts
│  │  │  │           │  └─ cert.pem
│  │  │  │           └─ user
│  │  │  ├─ wechange
│  │  │  │  └─ users
│  │  │  │     ├─ rcaadmin
│  │  │  │     │  └─ msp
│  │  │  │     │     ├─ IssuerPublicKey
│  │  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │  │     │     ├─ cacerts
│  │  │  │     │     │  └─ wechange-ca-localho-st-443.pem
│  │  │  │     │     ├─ keystore
│  │  │  │     │     │  └─ 799300bb0db4006a3f85d221ca7957f9bc1d9474e012f11d03c26d482f894f91_sk
│  │  │  │     │     ├─ signcerts
│  │  │  │     │     │  └─ cert.pem
│  │  │  │     │     └─ user
│  │  │  │     └─ wechangeadmin
│  │  │  │        ├─ fabric-ca-client-config.yaml
│  │  │  │        └─ msp
│  │  │  │           ├─ IssuerPublicKey
│  │  │  │           ├─ IssuerRevocationPublicKey
│  │  │  │           ├─ cacerts
│  │  │  │           │  └─ wechange-ca-localho-st-443.pem
│  │  │  │           ├─ config.yaml
│  │  │  │           ├─ keystore
│  │  │  │           │  └─ key.pem
│  │  │  │           ├─ signcerts
│  │  │  │           │  └─ cert.pem
│  │  │  │           └─ user
│  │  │  └─ wechangeappusers
│  │  │     └─ users
│  │  │        ├─ rcaadmin
│  │  │        │  └─ msp
│  │  │        │     ├─ IssuerPublicKey
│  │  │        │     ├─ IssuerRevocationPublicKey
│  │  │        │     ├─ cacerts
│  │  │        │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        │     ├─ keystore
│  │  │        │     │  └─ 6f62214a49cfdef97b17496abc952999ea374894ff5dbc3ab8bcac4d71368ae4_sk
│  │  │        │     ├─ signcerts
│  │  │        │     │  └─ cert.pem
│  │  │        │     └─ user
│  │  │        ├─ robertcarrera
│  │  │        │  ├─ IssuerPublicKey
│  │  │        │  ├─ IssuerRevocationPublicKey
│  │  │        │  ├─ cacerts
│  │  │        │  │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        │  ├─ keystore
│  │  │        │  ├─ signcerts
│  │  │        │  │  └─ cert.pem
│  │  │        │  └─ user
│  │  │        └─ wechangeappusersadmin
│  │  │           ├─ fabric-ca-client-config-hsm.yaml
│  │  │           ├─ fabric-ca-client-config.yaml
│  │  │           └─ msp
│  │  │              ├─ IssuerPublicKey 17-48-55-427
│  │  │              ├─ IssuerRevocationPublicKey 17-49-00-443
│  │  │              ├─ cacerts
│  │  │              │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │              ├─ config.yaml
│  │  │              ├─ keystore
│  │  │              │  └─ key.pem
│  │  │              ├─ signcerts
│  │  │              │  └─ cert.pem
│  │  │              └─ user
│  │  └─ genesis_block.pb
│  ├─ builders
│  │  └─ ccaas
│  │     └─ bin
│  │        ├─ build
│  │        ├─ detect
│  │        └─ release
│  ├─ config
│  │  ├─ orderer
│  │  │  ├─ configtx-template.yaml
│  │  │  ├─ fabric-ca-server-config.yaml
│  │  │  └─ orderer.yaml
│  │  ├─ wechange
│  │  │  ├─ core.yaml
│  │  │  └─ fabric-ca-server-config.yaml
│  │  └─ wechangeappusers
│  │     ├─ core.yaml
│  │     └─ fabric-ca-server-config.yaml
│  ├─ docs
│  │  ├─ APPLICATIONS.md
│  │  ├─ CA.md
│  │  ├─ CHAINCODE.md
│  │  ├─ CHAINCODE_AS_A_SERVICE.md
│  │  ├─ CHANNELS.md
│  │  ├─ HIGH_AVAILABILITY.md
│  │  ├─ KUBERNETES.md
│  │  ├─ README.md
│  │  ├─ TEST_NETWORK.md
│  │  └─ images
│  │     └─ test-network.png
│  ├─ kube
│  │  ├─ application-deployment.yaml
│  │  ├─ fabric-builder-role.yaml
│  │  ├─ fabric-builder-rolebinding.yaml
│  │  ├─ fabric-rest-sample.yaml
│  │  ├─ ingress-nginx-k3s.yaml
│  │  ├─ ingress-nginx-kind.yaml
│  │  ├─ ns-test-network.yaml
│  │  ├─ orderer
│  │  │  ├─ orderer-ca.yaml
│  │  │  ├─ orderer-orderer1.yaml
│  │  │  ├─ orderer-orderer2.yaml
│  │  │  ├─ orderer-orderer3.yaml
│  │  │  ├─ orderer-tls-cert-issuer.yaml
│  │  │  └─ org0-job-scrub-fabric-volumes.yaml
│  │  ├─ pvc-fabric-orderer.yaml
│  │  ├─ pvc-fabric-wechange.yaml
│  │  ├─ pvc-fabric-wechangeappusers.yaml
│  │  ├─ root-tls-cert-issuer.yaml
│  │  ├─ wechange
│  │  │  ├─ org1-job-scrub-fabric-volumes.yaml
│  │  │  ├─ wechange-ca.yaml
│  │  │  ├─ wechange-cc-template.yaml
│  │  │  ├─ wechange-install-k8s-builder.yaml
│  │  │  ├─ wechange-peer1.yaml
│  │  │  ├─ wechange-peer2.yaml
│  │  │  └─ wechange-tls-cert-issuer.yaml
│  │  └─ wechangeappusers
│  │     ├─ org2-job-scrub-fabric-volumes.yaml
│  │     ├─ wechangeappusers-ca.yaml
│  │     ├─ wechangeappusers-cc-template.yaml
│  │     ├─ wechangeappusers-install-k8s-builder.yaml
│  │     ├─ wechangeappusers-peer1.yaml
│  │     ├─ wechangeappusers-peer2.yaml
│  │     └─ wechangeappusers-tls-cert-issuer.yaml
│  ├─ network
│  ├─ network-debug.log
│  ├─ network.log
│  ├─ opt
│  │  └─ fortanix
│  │     └─ pkcs11
│  │        ├─ fortanix_pkcs11.conf
│  │        └─ fortanix_pkcs11_4.8.2070.so
│  ├─ scripts
│  │  ├─ application_connection.sh
│  │  ├─ appuser.id.template
│  │  ├─ ccp-template.json
│  │  ├─ chaincode.sh
│  │  ├─ channel.sh
│  │  ├─ cluster.sh
│  │  ├─ fabric_CAs.sh
│  │  ├─ fabric_config.sh
│  │  ├─ generate-hsm-user.sh
│  │  ├─ kind.sh
│  │  ├─ prereqs.sh
│  │  ├─ rest_sample.sh
│  │  ├─ set_anchor_peer.sh
│  │  ├─ test_network.sh
│  │  └─ utils.sh
│  └─ {
│     └─ Users
│        └─ lemillions
│           └─ Desktop
│              └─ WeChangeNetwork11
│                 └─ WeChangeTestNetwork
│                    └─ build
│                       └─ enrollments
│                          └─ wechangeappusers
│                             └─ users
│                                └─ wechangeappusersadmin
│                                   └─ fabric-ca-client-config.yaml}
└─ asset-transfer-basic
   └─ chaincode-external
      ├─ .dockerignore
      ├─ Dockerfile
      ├─ README.md
      ├─ assetTransfer.go
      ├─ chaincode.env
      ├─ chaincode1.env
      ├─ chaincode2.env
      ├─ connection.json
      ├─ crypto
      ├─ docker-compose-chaincode.yaml
      ├─ go.mod
      ├─ go.sum
      ├─ metadata.json
      └─ sampleBuilder
         └─ bin
            ├─ build
            ├─ detect
            └─ release

```
```
WeChangeNetwork11
├─ .DS_Store
├─ .vscode
│  └─ settings.json
├─ README.md
├─ WeChangeTestNetwork
│  ├─ README.md
│  ├─ application-go
│  │  ├─ go.mod
│  │  ├─ go.sum
│  │  └─ hsm-sample.go
│  ├─ bin
│  │  ├─ configtxgen
│  │  ├─ configtxlator
│  │  ├─ cryptogen
│  │  ├─ discover
│  │  ├─ fabric-ca-client
│  │  ├─ fabric-ca-server
│  │  ├─ ledgerutil
│  │  ├─ orderer
│  │  ├─ osnadmin
│  │  └─ peer
│  ├─ build
│  │  ├─ cas
│  │  │  ├─ orderer-ca
│  │  │  │  └─ tlsca-cert.pem
│  │  │  ├─ wechange-ca
│  │  │  │  └─ tlsca-cert.pem
│  │  │  └─ wechangeappusers-ca
│  │  │     └─ tlsca-cert.pem
│  │  ├─ channel-msp
│  │  │  ├─ ordererOrganizations
│  │  │  │  └─ orderer
│  │  │  │     ├─ msp
│  │  │  │     │  ├─ cacerts
│  │  │  │     │  │  └─ ca-signcert.pem
│  │  │  │     │  ├─ config.yaml
│  │  │  │     │  └─ tlscacerts
│  │  │  │     │     └─ tlsca-signcert.pem
│  │  │  │     └─ orderers
│  │  │  │        ├─ orderer-orderer1
│  │  │  │        │  └─ tls
│  │  │  │        │     └─ signcerts
│  │  │  │        │        └─ tls-cert.pem
│  │  │  │        ├─ orderer-orderer2
│  │  │  │        │  └─ tls
│  │  │  │        │     └─ signcerts
│  │  │  │        │        └─ tls-cert.pem
│  │  │  │        └─ orderer-orderer3
│  │  │  │           └─ tls
│  │  │  │              └─ signcerts
│  │  │  │                 └─ tls-cert.pem
│  │  │  └─ peerOrganizations
│  │  │     ├─ wechange
│  │  │     │  └─ msp
│  │  │     │     ├─ cacerts
│  │  │     │     │  └─ ca-signcert.pem
│  │  │     │     ├─ config.yaml
│  │  │     │     └─ tlscacerts
│  │  │     │        └─ tlsca-signcert.pem
│  │  │     └─ wechangeappusers
│  │  │        └─ msp
│  │  │           ├─ cacerts
│  │  │           │  └─ ca-signcert.pem
│  │  │           ├─ config.yaml
│  │  │           └─ tlscacerts
│  │  │              └─ tlsca-signcert.pem
│  │  ├─ configtx.yaml
│  │  ├─ enrollments
│  │  │  ├─ orderer
│  │  │  │  └─ users
│  │  │  │     ├─ ordereradmin
│  │  │  │     │  ├─ fabric-ca-client-config.yaml
│  │  │  │     │  └─ msp
│  │  │  │     │     ├─ IssuerPublicKey
│  │  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │  │     │     ├─ cacerts
│  │  │  │     │     │  └─ orderer-ca-localho-st-443.pem
│  │  │  │     │     ├─ config.yaml
│  │  │  │     │     ├─ keystore
│  │  │  │     │     │  └─ key.pem
│  │  │  │     │     ├─ signcerts
│  │  │  │     │     │  └─ cert.pem
│  │  │  │     │     └─ user
│  │  │  │     └─ rcaadmin
│  │  │  │        └─ msp
│  │  │  │           ├─ IssuerPublicKey
│  │  │  │           ├─ IssuerRevocationPublicKey
│  │  │  │           ├─ cacerts
│  │  │  │           │  └─ orderer-ca-localho-st-443.pem
│  │  │  │           ├─ keystore
│  │  │  │           │  └─ 114b54839ba74115709dbdf611f36619d2bfa86fcf02adfda4c82e1c0befa211_sk
│  │  │  │           ├─ signcerts
│  │  │  │           │  └─ cert.pem
│  │  │  │           └─ user
│  │  │  ├─ wechange
│  │  │  │  └─ users
│  │  │  │     ├─ rcaadmin
│  │  │  │     │  └─ msp
│  │  │  │     │     ├─ IssuerPublicKey
│  │  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │  │     │     ├─ cacerts
│  │  │  │     │     │  └─ wechange-ca-localho-st-443.pem
│  │  │  │     │     ├─ keystore
│  │  │  │     │     │  └─ a6c0a44074044ae9f16c2de91fa35645b9bef2473030a4f12ee2fcdb50e1aace_sk
│  │  │  │     │     ├─ signcerts
│  │  │  │     │     │  └─ cert.pem
│  │  │  │     │     └─ user
│  │  │  │     └─ wechangeadmin
│  │  │  │        ├─ fabric-ca-client-config.yaml
│  │  │  │        └─ msp
│  │  │  │           ├─ IssuerPublicKey
│  │  │  │           ├─ IssuerRevocationPublicKey
│  │  │  │           ├─ cacerts
│  │  │  │           │  └─ wechange-ca-localho-st-443.pem
│  │  │  │           ├─ config.yaml
│  │  │  │           ├─ keystore
│  │  │  │           │  └─ key.pem
│  │  │  │           ├─ signcerts
│  │  │  │           │  └─ cert.pem
│  │  │  │           └─ user
│  │  │  └─ wechangeappusers
│  │  │     └─ users
│  │  │        ├─ rcaadmin
│  │  │        │  └─ msp
│  │  │        │     ├─ IssuerPublicKey
│  │  │        │     ├─ IssuerRevocationPublicKey
│  │  │        │     ├─ cacerts
│  │  │        │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        │     ├─ keystore
│  │  │        │     │  └─ 47a7d7189352edb42cfcf9ca9be31988806f66651691ec3a3bc6c62c7e0ba6c2_sk
│  │  │        │     ├─ signcerts
│  │  │        │     │  └─ cert.pem
│  │  │        │     └─ user
│  │  │        ├─ robertcarrera
│  │  │        │  ├─ IssuerPublicKey
│  │  │        │  ├─ IssuerRevocationPublicKey
│  │  │        │  ├─ cacerts
│  │  │        │  │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        │  ├─ keystore
│  │  │        │  ├─ signcerts
│  │  │        │  │  └─ cert.pem
│  │  │        │  └─ user
│  │  │        └─ wechangeappusersadmin
│  │  │           ├─ fabric-ca-client-config-hsm.yaml
│  │  │           ├─ fabric-ca-client-config.yaml
│  │  │           └─ msp
│  │  │              ├─ IssuerPublicKey
│  │  │              ├─ IssuerRevocationPublicKey
│  │  │              ├─ cacerts
│  │  │              │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │              ├─ config.yaml
│  │  │              ├─ keystore
│  │  │              │  └─ key.pem
│  │  │              ├─ signcerts
│  │  │              │  └─ cert.pem
│  │  │              └─ user
│  │  ├─ genesis_block.pb
│  │  └─ softhsm
│  │     └─ cd6bb6f8-8682-1e9a-8e1d-3906ff58c29a
│  │        ├─ 25a10924-0248-caf8-b7ba-3fd7b353706e.lock
│  │        ├─ 25a10924-0248-caf8-b7ba-3fd7b353706e.object
│  │        ├─ e57832e2-00f2-fb8b-5368-e12002166510.lock
│  │        ├─ e57832e2-00f2-fb8b-5368-e12002166510.object
│  │        ├─ generation
│  │        ├─ token.lock
│  │        └─ token.object
│  ├─ builders
│  │  └─ ccaas
│  │     └─ bin
│  │        ├─ build
│  │        ├─ detect
│  │        └─ release
│  ├─ config
│  │  ├─ orderer
│  │  │  ├─ configtx-template.yaml
│  │  │  ├─ fabric-ca-server-config.yaml
│  │  │  └─ orderer.yaml
│  │  ├─ wechange
│  │  │  ├─ core.yaml
│  │  │  └─ fabric-ca-server-config.yaml
│  │  └─ wechangeappusers
│  │     ├─ core.yaml
│  │     └─ fabric-ca-server-config.yaml
│  ├─ docs
│  │  ├─ APPLICATIONS.md
│  │  ├─ CA.md
│  │  ├─ CHAINCODE.md
│  │  ├─ CHAINCODE_AS_A_SERVICE.md
│  │  ├─ CHANNELS.md
│  │  ├─ HIGH_AVAILABILITY.md
│  │  ├─ KUBERNETES.md
│  │  ├─ README.md
│  │  ├─ TEST_NETWORK.md
│  │  └─ images
│  │     └─ test-network.png
│  ├─ kube
│  │  ├─ application-deployment.yaml
│  │  ├─ fabric-builder-role.yaml
│  │  ├─ fabric-builder-rolebinding.yaml
│  │  ├─ fabric-rest-sample.yaml
│  │  ├─ ingress-nginx-k3s.yaml
│  │  ├─ ingress-nginx-kind.yaml
│  │  ├─ ns-test-network.yaml
│  │  ├─ orderer
│  │  │  ├─ orderer-ca.yaml
│  │  │  ├─ orderer-orderer1.yaml
│  │  │  ├─ orderer-orderer2.yaml
│  │  │  ├─ orderer-orderer3.yaml
│  │  │  ├─ orderer-tls-cert-issuer.yaml
│  │  │  └─ org0-job-scrub-fabric-volumes.yaml
│  │  ├─ pvc-fabric-orderer.yaml
│  │  ├─ pvc-fabric-wechange.yaml
│  │  ├─ pvc-fabric-wechangeappusers.yaml
│  │  ├─ root-tls-cert-issuer.yaml
│  │  ├─ wechange
│  │  │  ├─ org1-job-scrub-fabric-volumes.yaml
│  │  │  ├─ wechange-ca.yaml
│  │  │  ├─ wechange-cc-template.yaml
│  │  │  ├─ wechange-install-k8s-builder.yaml
│  │  │  ├─ wechange-peer1.yaml
│  │  │  ├─ wechange-peer2.yaml
│  │  │  └─ wechange-tls-cert-issuer.yaml
│  │  └─ wechangeappusers
│  │     ├─ org2-job-scrub-fabric-volumes.yaml
│  │     ├─ wechangeappusers-ca.yaml
│  │     ├─ wechangeappusers-cc-template.yaml
│  │     ├─ wechangeappusers-install-k8s-builder.yaml
│  │     ├─ wechangeappusers-peer1.yaml
│  │     ├─ wechangeappusers-peer2.yaml
│  │     └─ wechangeappusers-tls-cert-issuer.yaml
│  ├─ network
│  ├─ network-debug.log
│  ├─ network.log
│  ├─ opt
│  │  └─ fortanix
│  │     └─ pkcs11
│  │        ├─ fortanix_pkcs11.conf
│  │        └─ fortanix_pkcs11_4.8.2070.so
│  └─ scripts
│     ├─ application_connection.sh
│     ├─ appuser.id.template
│     ├─ ccp-template.json
│     ├─ chaincode.sh
│     ├─ channel.sh
│     ├─ cluster.sh
│     ├─ fabric_CAs.sh
│     ├─ fabric_config.sh
│     ├─ generate-hsm-user.sh
│     ├─ kind.sh
│     ├─ prereqs.sh
│     ├─ rest_sample.sh
│     ├─ set_anchor_peer.sh
│     ├─ test_network.sh
│     └─ utils.sh
├─ asset-transfer-basic
│  └─ chaincode-external
│     ├─ .dockerignore
│     ├─ Dockerfile
│     ├─ README.md
│     ├─ assetTransfer.go
│     ├─ chaincode.env
│     ├─ chaincode1.env
│     ├─ chaincode2.env
│     ├─ connection.json
│     ├─ crypto
│     ├─ docker-compose-chaincode.yaml
│     ├─ go.mod
│     ├─ go.sum
│     ├─ metadata.json
│     └─ sampleBuilder
│        └─ bin
│           ├─ build
│           ├─ detect
│           └─ release
└─ test-network-k8s
   └─ build
      └─ enrollments
         └─ wechange
            └─ users
               └─ wechangeadmin
                  └─ msp
                     ├─ cacerts
                     ├─ keystore
                     ├─ signcerts
                     └─ user

```
```
WeChangeNetwork13
├─ .DS_Store
├─ .vscode
│  └─ settings.json
├─ README.md
├─ WeChangeTestNetwork
│  ├─ README.md
│  ├─ application-go
│  │  ├─ go.mod
│  │  ├─ go.sum
│  │  └─ hsm-sample.go
│  ├─ auditor
│  │  ├─ bin
│  │  ├─ conf
│  │  │  └─ core.yaml
│  │  ├─ go.mod
│  │  ├─ go.sum
│  │  ├─ main.go
│  │  ├─ oapi-server.yaml
│  │  ├─ routes
│  │  │  ├─ operations.go
│  │  │  ├─ routes.gen.go
│  │  │  ├─ routes.go
│  │  │  └─ server.go
│  │  └─ service
│  │     ├─ audit.go
│  │     ├─ balance.go
│  │     └─ history.go
│  ├─ bin
│  │  ├─ auditor
│  │  ├─ configtxgen
│  │  ├─ configtxlator
│  │  ├─ cryptogen
│  │  ├─ discover
│  │  ├─ fabric-ca-client
│  │  ├─ fabric-ca-server
│  │  ├─ issuer
│  │  ├─ ledgerutil
│  │  ├─ orderer
│  │  ├─ osnadmin
│  │  ├─ owner
│  │  └─ peer
│  ├─ build
│  │  ├─ cas
│  │  │  ├─ orderer-ca
│  │  │  │  └─ tlsca-cert.pem
│  │  │  ├─ wechange-ca
│  │  │  │  └─ tlsca-cert.pem
│  │  │  └─ wechangeappusers-ca
│  │  │     └─ tlsca-cert.pem
│  │  ├─ channel-msp
│  │  │  ├─ ordererOrganizations
│  │  │  │  └─ orderer
│  │  │  │     ├─ msp
│  │  │  │     │  ├─ cacerts
│  │  │  │     │  │  └─ ca-signcert.pem
│  │  │  │     │  ├─ config.yaml
│  │  │  │     │  └─ tlscacerts
│  │  │  │     │     └─ tlsca-signcert.pem
│  │  │  │     └─ orderers
│  │  │  │        ├─ orderer-orderer1
│  │  │  │        │  └─ tls
│  │  │  │        │     └─ signcerts
│  │  │  │        │        └─ tls-cert.pem
│  │  │  │        ├─ orderer-orderer2
│  │  │  │        │  └─ tls
│  │  │  │        │     └─ signcerts
│  │  │  │        │        └─ tls-cert.pem
│  │  │  │        └─ orderer-orderer3
│  │  │  │           └─ tls
│  │  │  │              └─ signcerts
│  │  │  │                 └─ tls-cert.pem
│  │  │  └─ peerOrganizations
│  │  │     ├─ wechange
│  │  │     │  └─ msp
│  │  │     │     ├─ cacerts
│  │  │     │     │  └─ ca-signcert.pem
│  │  │     │     ├─ config.yaml
│  │  │     │     └─ tlscacerts
│  │  │     │        └─ tlsca-signcert.pem
│  │  │     └─ wechangeappusers
│  │  │        ├─ msp
│  │  │        │  ├─ cacerts
│  │  │        │  │  └─ ca-signcert.pem
│  │  │        │  ├─ config.yaml
│  │  │        │  └─ tlscacerts
│  │  │        │     └─ tlsca-signcert.pem
│  │  │        └─ wechangeappusers-peer1.wechangeappusers.example.com
│  │  │           ├─ keystore
│  │  │           └─ msp
│  │  │              ├─ IssuerPublicKey
│  │  │              ├─ IssuerRevocationPublicKey
│  │  │              ├─ cacerts
│  │  │              │  └─ wechangeappusers-ca.pem
│  │  │              ├─ config.yaml
│  │  │              ├─ keystore
│  │  │              │  └─ priv_sk
│  │  │              ├─ signcerts
│  │  │              │  └─ cert.pem
│  │  │              ├─ tlscacerts
│  │  │              │  └─ tlsca.wechangeappusers.example.com-cert.crt
│  │  │              └─ user
│  │  ├─ configtx.yaml
│  │  ├─ enrollments
│  │  │  ├─ orderer
│  │  │  │  └─ users
│  │  │  │     ├─ ordereradmin
│  │  │  │     │  ├─ fabric-ca-client-config.yaml
│  │  │  │     │  └─ msp
│  │  │  │     │     ├─ IssuerPublicKey
│  │  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │  │     │     ├─ cacerts
│  │  │  │     │     │  └─ orderer-ca-localho-st-443.pem
│  │  │  │     │     ├─ config.yaml
│  │  │  │     │     ├─ keystore
│  │  │  │     │     │  └─ key.pem
│  │  │  │     │     ├─ signcerts
│  │  │  │     │     │  └─ cert.pem
│  │  │  │     │     └─ user
│  │  │  │     └─ rcaadmin
│  │  │  │        └─ msp
│  │  │  │           ├─ IssuerPublicKey
│  │  │  │           ├─ IssuerRevocationPublicKey
│  │  │  │           ├─ cacerts
│  │  │  │           │  └─ orderer-ca-localho-st-443.pem
│  │  │  │           ├─ keystore
│  │  │  │           │  └─ 63ab569b1b03648e9a350ea34f7bd6cc0eacc65875fa721bf5e0d591df741793_sk
│  │  │  │           ├─ signcerts
│  │  │  │           │  └─ cert.pem
│  │  │  │           └─ user
│  │  │  ├─ wechange
│  │  │  │  └─ users
│  │  │  │     ├─ rcaadmin
│  │  │  │     │  └─ msp
│  │  │  │     │     ├─ IssuerPublicKey
│  │  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │  │     │     ├─ cacerts
│  │  │  │     │     │  └─ wechange-ca-localho-st-443.pem
│  │  │  │     │     ├─ keystore
│  │  │  │     │     │  └─ 51dd210ca26d4d9f7e103b6ab52eaf97f6f2531a6650db23436de956a92d444a_sk
│  │  │  │     │     ├─ signcerts
│  │  │  │     │     │  └─ cert.pem
│  │  │  │     │     └─ user
│  │  │  │     └─ wechangeadmin
│  │  │  │        ├─ fabric-ca-client-config.yaml
│  │  │  │        └─ msp
│  │  │  │           ├─ IssuerPublicKey
│  │  │  │           ├─ IssuerRevocationPublicKey
│  │  │  │           ├─ cacerts
│  │  │  │           │  └─ wechange-ca-localho-st-443.pem
│  │  │  │           ├─ config.yaml
│  │  │  │           ├─ keystore
│  │  │  │           │  └─ key.pem
│  │  │  │           ├─ signcerts
│  │  │  │           │  └─ cert.pem
│  │  │  │           └─ user
│  │  │  └─ wechangeappusers
│  │  │     └─ users
│  │  │        ├─ rcaadmin
│  │  │        │  └─ msp
│  │  │        │     ├─ IssuerPublicKey
│  │  │        │     ├─ IssuerRevocationPublicKey
│  │  │        │     ├─ cacerts
│  │  │        │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        │     ├─ keystore
│  │  │        │     │  └─ 25ea2602852cd6ac019f6c6257a6dfb889ca95c44e1f36dd2171b889246483f3_sk
│  │  │        │     ├─ signcerts
│  │  │        │     │  └─ cert.pem
│  │  │        │     └─ user
│  │  │        └─ wechangeappusersadmin
│  │  │           ├─ fabric-ca-client-config.yaml
│  │  │           └─ msp
│  │  │              ├─ IssuerPublicKey
│  │  │              ├─ IssuerRevocationPublicKey
│  │  │              ├─ cacerts
│  │  │              │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │              ├─ config.yaml
│  │  │              ├─ keystore
│  │  │              │  └─ key.pem
│  │  │              ├─ signcerts
│  │  │              │  └─ cert.pem
│  │  │              └─ user
│  │  └─ genesis_block.pb
│  ├─ config
│  │  ├─ orderer
│  │  │  ├─ configtx-template.yaml
│  │  │  ├─ fabric-ca-server-config.yaml
│  │  │  └─ orderer.yaml
│  │  ├─ wechange
│  │  │  ├─ core.yaml
│  │  │  └─ fabric-ca-server-config.yaml
│  │  └─ wechangeappusers
│  │     ├─ core.yaml
│  │     └─ fabric-ca-server-config.yaml
│  ├─ data
│  │  ├─ auditor
│  │  │  ├─ kvs
│  │  │  │  └─ _default
│  │  │  │     ├─ 000007.sst
│  │  │  │     ├─ 000008.sst
│  │  │  │     ├─ 000008.vlog
│  │  │  │     ├─ 000009.sst
│  │  │  │     ├─ 000009.vlog
│  │  │  │     ├─ 00009.mem
│  │  │  │     ├─ DISCARD
│  │  │  │     ├─ KEYREGISTRY
│  │  │  │     ├─ LOCK
│  │  │  │     └─ MANIFEST
│  │  │  └─ vault
│  │  │     └─ wechangeapp
│  │  │        ├─ 000001.sst
│  │  │        ├─ 000001.vlog
│  │  │        ├─ 000002.vlog
│  │  │        ├─ 00002.mem
│  │  │        ├─ DISCARD
│  │  │        ├─ KEYREGISTRY
│  │  │        ├─ LOCK
│  │  │        └─ MANIFEST
│  │  ├─ issuer
│  │  │  ├─ kvs
│  │  │  │  └─ _default
│  │  │  │     ├─ 000001.sst
│  │  │  │     ├─ 000001.vlog
│  │  │  │     ├─ 000002.vlog
│  │  │  │     ├─ 00002.mem
│  │  │  │     ├─ DISCARD
│  │  │  │     ├─ KEYREGISTRY
│  │  │  │     ├─ LOCK
│  │  │  │     └─ MANIFEST
│  │  │  └─ vault
│  │  │     └─ wechangeapp
│  │  │        ├─ 000001.sst
│  │  │        ├─ 000001.vlog
│  │  │        ├─ 000002.vlog
│  │  │        ├─ 00002.mem
│  │  │        ├─ DISCARD
│  │  │        ├─ KEYREGISTRY
│  │  │        ├─ LOCK
│  │  │        └─ MANIFEST
│  │  ├─ owner1
│  │  │  ├─ kvs
│  │  │  │  └─ _default
│  │  │  │     ├─ 000001.vlog
│  │  │  │     ├─ 00001.mem
│  │  │  │     ├─ DISCARD
│  │  │  │     ├─ KEYREGISTRY
│  │  │  │     ├─ LOCK
│  │  │  │     └─ MANIFEST
│  │  │  └─ vault
│  │  │     └─ wechangeapp
│  │  │        ├─ 000001.vlog
│  │  │        ├─ 00001.mem
│  │  │        ├─ DISCARD
│  │  │        ├─ KEYREGISTRY
│  │  │        ├─ LOCK
│  │  │        └─ MANIFEST
│  │  └─ owner2
│  ├─ docs
│  │  ├─ APPLICATIONS.md
│  │  ├─ CA.md
│  │  ├─ CHAINCODE.md
│  │  ├─ CHAINCODE_AS_A_SERVICE.md
│  │  ├─ CHANNELS.md
│  │  ├─ HIGH_AVAILABILITY.md
│  │  ├─ KUBERNETES.md
│  │  ├─ README.md
│  │  ├─ TEST_NETWORK.md
│  │  └─ images
│  │     └─ test-network.png
│  ├─ e2e
│  │  ├─ client.gen.go
│  │  ├─ e2e_test.go
│  │  ├─ go.mod
│  │  └─ oapi-client.yaml
│  ├─ explorer
│  │  ├─ .env
│  │  ├─ config.json
│  │  ├─ connection-profile
│  │  │  └─ wechangeapp.json
│  │  └─ docker-compose.yaml
│  ├─ go.work
│  ├─ go.work.sum
│  ├─ issuer
│  │  ├─ conf
│  │  │  └─ core.yaml
│  │  ├─ go.mod
│  │  ├─ go.sum
│  │  ├─ main.go
│  │  ├─ oapi-server.yaml
│  │  ├─ routes
│  │  │  ├─ operations.go
│  │  │  ├─ routes.gen.go
│  │  │  ├─ routes.go
│  │  │  └─ server.go
│  │  └─ service
│  │     └─ issue.go
│  ├─ keys
│  │  ├─ auditor
│  │  │  ├─ aud
│  │  │  │  └─ msp
│  │  │  │     ├─ IssuerPublicKey
│  │  │  │     ├─ IssuerRevocationPublicKey
│  │  │  │     ├─ cacerts
│  │  │  │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │  │     ├─ keystore
│  │  │  │     │  └─ 55e50ba9427f6ac4791c641fbfbc9b1b04722d462f8097f330209d861660d4c6_sk
│  │  │  │     ├─ signcerts
│  │  │  │     │  └─ cert.pem
│  │  │  │     └─ user
│  │  │  └─ fsc
│  │  │     └─ msp
│  │  │        ├─ IssuerPublicKey
│  │  │        ├─ IssuerRevocationPublicKey
│  │  │        ├─ cacerts
│  │  │        │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        ├─ keystore
│  │  │        │  └─ priv_sk
│  │  │        ├─ signcerts
│  │  │        │  └─ cert.pem
│  │  │        └─ user
│  │  ├─ issuer
│  │  │  ├─ fsc
│  │  │  │  └─ msp
│  │  │  │     ├─ IssuerPublicKey
│  │  │  │     ├─ IssuerRevocationPublicKey
│  │  │  │     ├─ cacerts
│  │  │  │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │  │     ├─ keystore
│  │  │  │     │  └─ priv_sk
│  │  │  │     ├─ signcerts
│  │  │  │     │  └─ cert.pem
│  │  │  │     └─ user
│  │  │  └─ iss
│  │  │     └─ msp
│  │  │        ├─ IssuerPublicKey
│  │  │        ├─ IssuerRevocationPublicKey
│  │  │        ├─ cacerts
│  │  │        │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │        ├─ keystore
│  │  │        │  └─ 66b7bd7f075ad89239fd27d79a716b8a5f7def9d37a7c85d0b8702db70cf11df_sk
│  │  │        ├─ signcerts
│  │  │        │  └─ cert.pem
│  │  │        └─ user
│  │  ├─ owner1
│  │  │  ├─ fsc
│  │  │  │  └─ msp
│  │  │  │     ├─ IssuerPublicKey
│  │  │  │     ├─ IssuerRevocationPublicKey
│  │  │  │     ├─ cacerts
│  │  │  │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │  │     ├─ keystore
│  │  │  │     │  └─ priv_sk
│  │  │  │     ├─ signcerts
│  │  │  │     │  └─ cert.pem
│  │  │  │     └─ user
│  │  │  └─ wallet
│  │  │     ├─ alice
│  │  │     │  └─ msp
│  │  │     │     ├─ IssuerPublicKey
│  │  │     │     ├─ IssuerRevocationPublicKey
│  │  │     │     ├─ cacerts
│  │  │     │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │     │     ├─ keystore
│  │  │     │     ├─ signcerts
│  │  │     │     └─ user
│  │  │     │        └─ SignerConfig
│  │  │     └─ bob
│  │  │        └─ msp
│  │  │           ├─ IssuerPublicKey
│  │  │           ├─ IssuerRevocationPublicKey
│  │  │           ├─ cacerts
│  │  │           │  └─ wechangeappusers-ca-localho-st-443.pem
│  │  │           ├─ keystore
│  │  │           ├─ signcerts
│  │  │           └─ user
│  │  │              └─ SignerConfig
│  │  └─ owner2
│  │     ├─ fsc
│  │     │  └─ msp
│  │     │     ├─ IssuerPublicKey
│  │     │     ├─ IssuerRevocationPublicKey
│  │     │     ├─ cacerts
│  │     │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │     │     ├─ keystore
│  │     │     │  └─ priv_sk
│  │     │     ├─ signcerts
│  │     │     │  └─ cert.pem
│  │     │     └─ user
│  │     └─ wallet
│  │        ├─ carlos
│  │        │  └─ msp
│  │        │     ├─ IssuerPublicKey
│  │        │     ├─ IssuerRevocationPublicKey
│  │        │     ├─ cacerts
│  │        │     │  └─ wechangeappusers-ca-localho-st-443.pem
│  │        │     ├─ keystore
│  │        │     ├─ signcerts
│  │        │     └─ user
│  │        │        └─ SignerConfig
│  │        └─ dan
│  │           └─ msp
│  │              ├─ IssuerPublicKey
│  │              ├─ IssuerRevocationPublicKey
│  │              ├─ cacerts
│  │              │  └─ wechangeappusers-ca-localho-st-443.pem
│  │              ├─ keystore
│  │              ├─ signcerts
│  │              └─ user
│  │                 └─ SignerConfig
│  ├─ kube
│  │  ├─ application-deployment.yaml
│  │  ├─ fabric-builder-role.yaml
│  │  ├─ fabric-builder-rolebinding.yaml
│  │  ├─ fabric-rest-sample.yaml
│  │  ├─ ingress-nginx-k3s.yaml
│  │  ├─ ingress-nginx-kind.yaml
│  │  ├─ ns-test-network.yaml
│  │  ├─ orderer
│  │  │  ├─ orderer-ca.yaml
│  │  │  ├─ orderer-orderer1.yaml
│  │  │  ├─ orderer-orderer2.yaml
│  │  │  ├─ orderer-orderer3.yaml
│  │  │  ├─ orderer-tls-cert-issuer.yaml
│  │  │  └─ org0-job-scrub-fabric-volumes.yaml
│  │  ├─ pvc-fabric-orderer.yaml
│  │  ├─ pvc-fabric-wechange.yaml
│  │  ├─ pvc-fabric-wechangeappusers.yaml
│  │  ├─ root-tls-cert-issuer.yaml
│  │  ├─ wechange
│  │  │  ├─ org1-job-scrub-fabric-volumes.yaml
│  │  │  ├─ wechange-ca.yaml
│  │  │  ├─ wechange-cc-template.yaml
│  │  │  ├─ wechange-install-k8s-builder.yaml
│  │  │  ├─ wechange-peer1.yaml
│  │  │  ├─ wechange-peer2.yaml
│  │  │  └─ wechange-tls-cert-issuer.yaml
│  │  └─ wechangeappusers
│  │     ├─ org2-job-scrub-fabric-volumes.yaml
│  │     ├─ wechangeappusers-ca.yaml
│  │     ├─ wechangeappusers-cc-template.yaml
│  │     ├─ wechangeappusers-install-k8s-builder.yaml
│  │     ├─ wechangeappusers-peer1.yaml
│  │     ├─ wechangeappusers-peer2.yaml
│  │     └─ wechangeappusers-tls-cert-issuer.yaml
│  ├─ network
│  ├─ network-debug.log
│  ├─ network.log
│  ├─ opt
│  │  └─ fortanix
│  │     └─ pkcs11
│  │        ├─ fortanix_pkcs11.conf
│  │        └─ fortanix_pkcs11_4.8.2070.so
│  ├─ owner
│  │  ├─ conf
│  │  │  ├─ owner1
│  │  │  │  └─ core.yaml
│  │  │  └─ owner2
│  │  │     └─ core.yaml
│  │  ├─ go.mod
│  │  ├─ go.sum
│  │  ├─ main.go
│  │  ├─ oapi-server.yaml
│  │  ├─ routes
│  │  │  ├─ operations.go
│  │  │  ├─ routes.gen.go
│  │  │  ├─ routes.go
│  │  │  └─ server.go
│  │  └─ service
│  │     ├─ accept.go
│  │     ├─ balance.go
│  │     ├─ history.go
│  │     ├─ redeem.go
│  │     └─ transfer.go
│  ├─ scripts
│  │  ├─ application_connection.sh
│  │  ├─ appuser.id.template
│  │  ├─ ccp-template.json
│  │  ├─ chaincode.sh
│  │  ├─ channel.sh
│  │  ├─ cluster.sh
│  │  ├─ enroll-users.sh
│  │  ├─ fabric_CAs.sh
│  │  ├─ fabric_config.sh
│  │  ├─ generate-hsm-user.sh
│  │  ├─ kind.sh
│  │  ├─ prereqs.sh
│  │  ├─ rest_sample.sh
│  │  ├─ set_anchor_peer.sh
│  │  ├─ test_network.sh
│  │  └─ utils.sh
│  ├─ swagger.yaml
│  └─ tokenchaincode
│     ├─ Dockerfile
│     └─ zkatdlog_pp.json
├─ asset-transfer-basic
│  └─ chaincode-external
│     ├─ .dockerignore
│     ├─ Dockerfile
│     ├─ README.md
│     ├─ assetTransfer.go
│     ├─ chaincode.env
│     ├─ chaincode1.env
│     ├─ chaincode2.env
│     ├─ connection.json
│     ├─ crypto
│     ├─ docker-compose-chaincode.yaml
│     ├─ go.mod
│     ├─ go.sum
│     ├─ metadata.json
│     └─ sampleBuilder
│        └─ bin
│           ├─ build
│           ├─ detect
│           └─ release
├─ config
│  └─ configtx.yaml
└─ test-network-k8s
   └─ build
      └─ enrollments
         └─ wechange
            └─ users
               └─ wechangeadmin
                  └─ msp
                     ├─ cacerts
                     ├─ keystore
                     ├─ signcerts
                     └─ user

```