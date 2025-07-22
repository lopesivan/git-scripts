#!/usr/bin/env bash

while read url; do
    file=${url##*/}
    wget \
        --header="Authorization: token $GITHUB_TOKEN" \
        --header="Accept: application/vnd.github.v3.raw" \
        -O $file \
        "$url"

done <lista

# conteúdo de lista:
# https://gist.githubusercontent.com/LinuxDicasPro/0481893a55581b024676c7830ee7fa34/raw/ef98b2307a30394aa9891292b26aeabff3e65fe9/gparted.md
# https://gist.githubusercontent.com/LinuxDicasPro/8384cfbd85c5f8421f7e7058f2a19ff3/raw/06f04b9a50297d5440d54702bf6cc7f6762d909c/customread.md
# https://gist.githubusercontent.com/LinuxDicasPro/200564ee7794fb75cd5ae0e043ed93b8/raw/3d8eb1bbacd5d5c753a4c3d511b1b6ebeb06dcc7/formatar_pendrive.md
# https://gist.githubusercontent.com/LinuxDicasPro/ebfc17e160b193b59fe8eb3496990dab/raw/a697ce9b712452d6394f95e304e2ef455478e818/buscabinarios.md
# https://gist.githubusercontent.com/LinuxDicasPro/2ca9cc59e6a071675919532db8dabd31/raw/467c1a9cc23a9a2f65e0fcbf0581bcc52195633c/globrecursivo.md
# https://gist.githubusercontent.com/LinuxDicasPro/136bac4b4fa0e31c50025fecbe0439ce/raw/8293369f37e9640c80e3f94d62750ec06fdad20c/otimizartamanhoprogramas.md
# https://gist.githubusercontent.com/LinuxDicasPro/2cbbd4ba1b1df0f51cc8ca52500ad740/raw/69de338f40d175fbefabee7df576d46d59000800/acessarrootfs.md
# https://gist.githubusercontent.com/LinuxDicasPro/1e414d6669e19f0b468f46c0eddc1790/raw/b7f94ed2ba347083901a82170bade81dc53806e0/expandirasterisco.md
# https://gist.githubusercontent.com/LinuxDicasPro/2d90d79fb128903da6ba7e86db6c50ea/raw/56099ed631b9a75098f827ac435dd622c0ce9e5d/arch-chroot.sh
# https://gist.githubusercontent.com/LinuxDicasPro/604ee28e0646bb9f30caa210ee9e388a/raw/6af3dddb9f2478e2761f6ec7c4cb46f62cfcb669/debootstrap.md
# https://gist.githubusercontent.com/LinuxDicasPro/1cf0b00f44607f6235473f01ed6af7fc/raw/25a9f8ee93b3c03a353bac67c54dcf937ff9a3ab/permissao.md
# https://gist.githubusercontent.com/LinuxDicasPro/9e243604887f6eea02abe3c529dc0711/raw/e8285badadf7dff2cd2e0e0f57b4fbf086b3923c/tgpt.md
# https://gist.githubusercontent.com/LinuxDicasPro/2ef029a99cbd585741dec1ee03e2c02a/raw/be1aa3bdda2cd79036157e6484678a5181fbd4b1/conty-linux-portatil.md
# https://gist.githubusercontent.com/LinuxDicasPro/d2354c48b5509bd8073ada2434384fa6/raw/d1469e543ec7933c15df785e8d49aa9ae9e70450/swapfile.md
# https://gist.githubusercontent.com/LinuxDicasPro/c0c5f1579e8eee38c979ca564f8906ea/raw/96b8cf6ac4472392a6991c270763078ee5205308/fonte_feia_java.md
# https://gist.githubusercontent.com/LinuxDicasPro/59d72940e451fc4e0b5ec9637f66dec0/raw/d7201cbeb9afdef3139ecea89839a874b658c7c9/acelerar_copia_usb.md
# https://gist.githubusercontent.com/LinuxDicasPro/debc2e2bd0b96bba445507d5e34b8ed4/raw/85f8867878a0bf2ae504838784605c5814a1fbcb/log2ram.md
# https://gist.githubusercontent.com/LinuxDicasPro/06968e572f2d7023ced74423bea5754f/raw/a32899a33a2357c4a0373fbe7fbd12fc2be77f74/ativar-sudo-linux.md
# https://gist.githubusercontent.com/LinuxDicasPro/a088a984524a8344308eb53e028e9ada/raw/9c399f394dee304970aab3de94988e78ac5d3ce4/recompilar-kernel-debian-12.md
# https://gist.githubusercontent.com/LinuxDicasPro/829b813b92b3ab4dc4e87e3b1e933767/raw/1fcbf61913e329255d17541c9b8be9b612ba39b7/vmware-fix-vmmon.md
# https://gist.githubusercontent.com/LinuxDicasPro/12a41f6115f556e9731c370da5a5c923/raw/3501dd8f9a4e9c661e53913b401d0c8a5f7c1e18/inicializacao_rapida_linux.md
# https://gist.githubusercontent.com/LinuxDicasPro/b44a69ec5741fa39d15cc8b6145dda71/raw/089073e37fd50091473ebc549d1ee0f37497695a/fix_locale.md
# https://gist.githubusercontent.com/LinuxDicasPro/c2d6c08019dc73cabc3cdc6a6f155ed5/raw/e5afb8660d511a4892901e07a68917eba102b70d/Optimization_SSD_Linux.md
# https://gist.githubusercontent.com/LinuxDicasPro/d61e448c7b566f7f35594e0547805e15/raw/5904cd4a42d3e498b4dc527246c437b5fe7de430/bootusbvirtualbox.md
# https://gist.githubusercontent.com/LinuxDicasPro/37405ac83db8d70d7719fdbdc1353876/raw/4d5933a8825f980493159467e391aacd70fdf2c1/vosk.md
# https://gist.githubusercontent.com/LinuxDicasPro/759bb56042a23d8eccf9451ead76ef17/raw/d64e7333eb641f41005a20c624d541b1ff2852af/junest.md
# https://gist.githubusercontent.com/LinuxDicasPro/93813600581045fc4ac54e37211a8083/raw/7069d81e970babbc0c19dd48b369fe02c851aebd/bootusbqemu.md
