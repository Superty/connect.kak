# ranger
# https://github.com/ranger/ranger

provide-module connect-ranger %{
  # Modules
  require-module connect

  # Register our paths
  set-option -add global connect_paths "%opt{connect_modules_path}/ranger/commands"

  define-command ranger -docstring 'Open ranger' %{
    + :ranger 
  }

  define-command ranger-here -docstring 'Open ranger' %{
    + :ranger-here %val{buffile}
  }
}
