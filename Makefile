.PHONY: install
install:
	pip install -U setuptools pip wheel
	pip install -U --pre -r requirements.txt -r requirements.dev.txt

tfplugin5:
	cd docs/tf_grpc_plugin/ && python -m grpc_tools.protoc -I proto --python_out=../../src --grpc_python_out=../../src proto/inmanta_tfplugin/tfplugin5/tfplugin5.proto; cd ../..
