set PYTORCH_FINAL_PACKAGE_DIR=/c/Projects/pytorch/build-results/
set BRANCH=HEAD
set BUILD_ENVIRONMENT=win-vs2019-cuda11.7-py3
set BUILD_WHEEL=1
set MAX_JOBS=8
set CUDA_VERSION=11.7
set PYTHON_VERSION="3.8"
set SCCACHE_BUCKET="ossci-compiler-cache"
::set SCCACHE_S3_KEY_PREFIX=${{ github.workflow }}
set VC_PRODUCT="BuildTools"
set VC_VERSION=""
set VC_YEAR="2019"
set ALPINE_IMAGE="308535385114.dkr.ecr.us-east-1.amazonaws.com/tool/alpine"
set AWS_DEFAULT_REGION=us-east-1
::set PR_NUMBER=${{ github.event.pull_request.number }}
::set SHA1=${{ github.event.pull_request.head.sha || github.sha }}
set DEBUG=1
set TORCH_CUDA_ARCH_LIST="7.0"
set USE_CUDA=1
::set OUR_GITHUB_JOB_ID=${{ steps.get-job-id.outputs.job-id }}

"C:\Program Files\Git\bin\sh.exe" .jenkins\pytorch\win-build.sh
