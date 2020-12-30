cpv() {
    rsync -pogbr -hhh --backup-dir=/tmp/rsync -e /dev/null --progress "$@"
}
compdef _files cpv

actions () {

    echo
    echo 'Hide File: setfile -a V'
    echo
    echo 'Youtube-dl batch download: youtube-dl -ci -x --audio-format mp3 --batch-file= $File1'
    echo
    echo 'Youtube-dl single file download: youtube-dl -x --audio-format mp3 $File1'
    echo
    echo 'List local snapshots: tmutil listlocalsnapshots /'
    echo
    echo 'Delete local snapshots: for d in $(tmutil listlocalsnapshotdates | grep "-"); do sudo tmutil deletelocalsnapshots $d; done'
    echo
    echo 'Reload Quick Look plugins: qlmanage -r'
    echo
    echo 'CDR tp ISO: hdiutil makehybrid -iso -joliet -o File.iso File.cdr'
    echo
    echo 'Create floppy: dd if=/dev/zero of=floppy.img bs=1024 count=1440'
    echo
    echo "Thin Dock spacer: defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"small-spacer-tile\";}'; killall Dock"
    echo
    echo 'Pandoc convert document formats: pandoc -s -o outputFile.ext inputFile.ext'
    echo
}
