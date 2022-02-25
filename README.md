# inmanta-tfplugin
This package contains the generated python package for Terraform Plugin RPC protocol

## How to use
```python
import grpc
import inmanta_tfplugin.tfplugin5_pb2
import inmanta_tfplugin.tfplugin5_pb2_grpc

proto_addr = ""
channel = grpc.insecure_channel(proto_addr)
stub = inmanta_tfplugin.tfplugin5_pb2_grpc.ProviderStub(channel)
```

A more complete usage example can be found in [inmanta's terraform module](https://github.com/inmanta/terraform).

## Package versioning

- `major`: Major version of the source protobuf file used to generate the package.
- `minor`: Minor version of the source protobuf file used to generate the package.
- `patch`: Up to us, in case we want to re-release a generated package with a higher version.
