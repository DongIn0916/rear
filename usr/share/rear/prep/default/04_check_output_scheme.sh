if [[ "$OUTPUT_URL" ]] ; then
    output_scheme=$(url_scheme "$OUTPUT_URL")
    case $output_scheme in
       (fish|ftp|ftps|hftp|http|https|sftp)
          if [[ -z "$(type -p lftp)" ]]; then
             Error "The OUTPUT_URL scheme $output_scheme requires the 'lftp' command, which is missing!"
          fi ;;
    esac
fi
