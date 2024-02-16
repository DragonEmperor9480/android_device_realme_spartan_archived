echo 'Cloning vendor'
git clone https://github.com/Dragon-s-Playground/android_vendor_realme_spartan.git -b dragon-test vendor/realme/spartan

echo "Cloning kernel"
git clone https://github.com/DragonEmperor9480/rmx3371_kernel.git kernel/realme/sm8250 --depth=1

echo "Cloning oplus hals"
git clone https://github.com/DragonEmperor9480/android_hardware_oplus_rmx3371.git hardware/oplus -b test-14