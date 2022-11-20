# be sure to be in the directory
cd "$(dirname $0)"

# Roll the cloud image
python3 image_roll.py

# sed the correct monthly image
sed -i "s!map=maps/day.*jpg!map=maps/day_$(date +%m).jpg!g" config

# generate earth
xplanet -config config \
            -lat 42 -lon 6 \
            -target earth \
            -date $(date +%Y%m%d.%H%M%S)\
            -searchdir rayleigh \
            -geometry 1024x1024 \
            -transpng  ./out/xplanet_$(date +%Y%m%d.%H%M%S).png \
            -num_times 1
