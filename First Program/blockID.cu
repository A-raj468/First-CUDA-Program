#include <cuda_runtime.h>
#include <device_launch_parameters.h>

#include <stdio.h>

__global__ void printBlockDim() {
    printf("blockDim.x : %d, blockDim.y : %d, blockDim.z : %d\n", blockDim.x,
           blockDim.y, blockDim.z);
}

int main(int argc, char* argv[]) {
    int nx = 16, ny = 16, nz = 1;

    dim3 numThreads(8, 8, 1);
    dim3 numBlocks(nx / numThreads.x, ny / numThreads.y, nz / numThreads.z);

    printBlockDim<<<numBlocks, numThreads>>>();
    cudaDeviceSynchronize();
    cudaDeviceReset();
    return 0;
}
