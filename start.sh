docker image build -t pynosemon . && \
docker container run \
--rm \
-it \
-v $(pwd)/src:/src \
pynosemon $@
