
# Download Utils
LAB_DIR=$(pwd)/labs
cd ${HOME}/labtainer/labtainer-student

echo "=== `date` : Start Adding Labtainer Labs in` $LAB_DIR `$==="
for filename in ${LAB_DIR}/*.tar; do
    [ -e "$filename" ] || continue
		echo "=== `date` : Adding lab `echo $filename` ==="
    imodule file:/${filename}
    # ... rest of the loop body
done
