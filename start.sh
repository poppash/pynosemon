docker image build -t pynosemon . && \
docker container run \
--rm \
-t \
-v $(pwd)/src:/src \
pynosemon $@
