#include <opencv2/opencv.hpp>

#include "devices/camera/camera.h"

using namespace cv;

int main()
{
    Camera cam(0);

    cam.set(CAM_PROP_FRAME_WIDTH, 800);
    cam.set(CAM_PROP_FRAME_HEIGHT, 600);

    Mat img;

    if (cam.read(img))
    {
        imwrite("image.jpg", img);
    }

    cam.release();

    return 0;
}
