
_docker_env_complete() {
  COMPREPLY=()
  local current="${COMP_WORDS[COMP_CWORD]}"

  # First word completion: can be a mode or an env
  if [ $COMP_CWORD -eq 1 ]; then
	COMPREPLY=( $(compgen -W "$(docker-env --list) --list --add --update --rm --help" -- ${current}) )
    return 0
  fi

  # Completion after each keyword
  case "${COMP_WORDS[COMP_CWORD-1]}" in
  --add)
	# Must be a new env name
	return 0
	;;
  --update|--rm)
	COMPREPLY=( $(compgen -W "$(docker-env --list)" -- ${current}) )
	return 0
	;;

  --cacert|--tlscert|--tlskey)
	COMPREPLY=( $(compgen -f -- ${current}) )
	return 0
	;;

  --version)
	# --> Docker version completion
	return 0
	;;
  esac

  # Options available in each mode
  case "${COMP_WORDS[1]}" in
  --add)
	COMPREPLY=( $(compgen -W "--cacert --tlscert --tlskey --version" -A hostname -- ${current}) )
	;;
  --update)
	COMPREPLY=( $(compgen -W "--version" -- ${current}) )	  
    ;;
  --list|--rm|--help)
    ;;
  *)
	local docker_completion=$(complete -p docker | awk '{print $(NF-1)}')
	unset COMP_WORDS[1]
	COMP_WORDS[0]="docker"
	COMP_WORDS=( "${COMP_WORDS[@]}" )
	COMP_LINE="${COMP_WORDS[*]}"
	((COMP_CWORD--))
	${docker_completion}
	;;
  esac
}

complete -F _docker_env_complete docker-env
