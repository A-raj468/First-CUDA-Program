//#include <cuda_runtime.h>
//#include <device_launch_parameters.h>
//
//#include <stdio.h>
//
//__global__ void helloCUDAworld() {
//    printf("Hello CUDA world!\n");
//}
//
//int main(int argc, char* argv[]) {
//    int nx = 16, ny = 4, nz = 1;
//
//    dim3 numThreads(4, 1, 1);
//    dim3 numBlocks(nx / numThreads.x, ny / numThreads.y, nz / numThreads.z);
//
//    helloCUDAworld<<<numBlocks, numThreads>>>();
//    cudaDeviceSynchronize();
//    cudaDeviceReset();
//    return 0;
//}
