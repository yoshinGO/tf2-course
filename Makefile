clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

build: clean-pyc
	docker build -t tf2course .

bash:
	docker run \
    -it tf2course \
		/bin/bash

## jupyter
run-jupyter:
	docker run \
    -p 8889:8889 \
    -v $(CURDIR)/notebook/:/work/notebook \
    tf2course \
    jupyter lab --no-browser --ip=0.0.0.0 --port 8889 --allow-root
