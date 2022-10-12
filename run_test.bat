set USE_CUDA=1
set INSTALL_WINDOWS_SDK=1
set PYTHON_VERSION=3.8
set PYTORCH_RETRY_TEST_CASES=1
set PYTORCH_OVERRIDE_FLAKY_SIGNAL=1
set VC_PRODUCT="BuildTools"
set VC_VERSION=""
set VS_VERSION="16.8.6"
set VC_YEAR="2019"
set AWS_DEFAULT_REGION=us-east-1
:: set PR_NUMBER=${{ github.event.pull_request.number }}
:: set SHA1=${{ github.event.pull_request.head.sha || github.sha }}
set CUDA_VERSION=11.7
set PYTORCH_FINAL_PACKAGE_DIR=/c/Projects/pytorch/build-results/
set BUILD_ENVIRONMENT=win-vs2019-cuda11.7-py3
set ALPINE_IMAGE="308535385114.dkr.ecr.us-east-1.amazonaws.com/tool/alpine"
:: set SHARD_NUMBER=${{ matrix.shard }}
:: set NUM_TEST_SHARDS=${{ matrix.num_shards }}
:: set TEST_CONFIG=${{ matrix.config }}
:: set PR_BODY=${{ github.event.pull_request.body }}
set TORCH_CUDA_ARCH_LIST="7.0"

"C:\Program Files\Git\bin\sh.exe" .jenkins\pytorch\win-test.sh
