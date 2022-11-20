from PIL import Image

# Open the image
image = Image.open("maps/clouds.png")

# Get x and y. Delta is the percent of the image to "roll"
xsize, ysize = image.size
delta_x = 18 % xsize

# Cut the two pieces
part1 = image.crop((0, 0, xsize-delta_x, ysize)) # top left
part2 = image.crop((xsize-delta_x, 0, xsize, ysize)) # top right

# Collage
image.paste(part2, (0, 0))
image.paste(part1, (delta_x, 0))
Image.Image().paste
image.save("maps/clouds.png")
