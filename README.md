This project analyze Images that are taken at day and night by camera and label them as day or night
1-	The user selects a folder containing images to be labeled.
2-	All Images are stored in a list called “imagesList”
3-	For each Image:
            3-1 "colorfulnessValue" is calculated by using a special function (colorfulness).
    3-2 If the value is below a certain threshold, the image is labeled as "night".  Otherwise, it is labeled as "day”.
4-	Colorfulness is a function that calculates a value based on the image's color saturation level (in HSV color space). This parameter is used, because night images tend to be grayscale, while day images are more colorful.
