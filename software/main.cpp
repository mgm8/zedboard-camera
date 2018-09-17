#include <opencv2/opencv.hpp>

#include "devices/camera/camera.h"

using namespace cv;

int main()
{
    Camera cam(0);

    Mat img;

    if (cam.read(img))
    {
        imwrite("image.png", img);
    }

    cam.release();

    return 0;
}
