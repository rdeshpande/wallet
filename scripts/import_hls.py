import os
with open('urls.txt') as f:
    lines = f.readlines()
    for idx, line in enumerate(lines):
        line = line.strip()
        print("Downloading: " + line)
        cmd = f"ffmpeg -i {line} -c copy -bsf:a aac_adtstoasc {idx}.mp4"
        os.system(cmd)
