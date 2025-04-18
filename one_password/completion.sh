#compdef _op op


function _op {
  local -a commands

  _arguments -C \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '(-h --help)'{-h,--help}'[Get help for op.]' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "account:Manage your locally configured 1Password accounts"
      "completion:Generate shell completion information"
      "connect:Manage Connect instances and Connect tokens in your 1Password account"
      "document:Perform CRUD operations on Document items in your vaults"
      "events-api:Manage Events API integrations in your 1Password account"
      "group:Manage the groups in your 1Password account"
      "help:Get help for a command"
      "inject:Inject secrets into a config file"
      "item:Perform CRUD operations on the 1Password items in your vaults"
      "plugin:Manage the shell plugins you use to authenticate third-party CLIs"
      "read:Read a secret using the secrets reference syntax"
      "run:Pass secrets as environment variables to a process"
      "signin:Sign in to a 1Password account"
      "signout:Sign out of a 1Password account"
      "update:Check for and download updates."
      "user:Manage users within this 1Password account"
      "vault:Manage permissions and perform CRUD operations on your 1Password vaults"
      "whoami:Get information about a signed-in account"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  account)
    _op_account
    ;;
  completion)
    _op_completion
    ;;
  connect)
    _op_connect
    ;;
  document)
    _op_document
    ;;
  events-api)
    _op_events-api
    ;;
  group)
    _op_group
    ;;
  help)
    _op_help
    ;;
  inject)
    _op_inject
    ;;
  item)
    _op_item
    ;;
  plugin)
    _op_plugin
    ;;
  read)
    _op_read
    ;;
  run)
    _op_run
    ;;
  signin)
    _op_signin
    ;;
  signout)
    _op_signout
    ;;
  update)
    _op_update
    ;;
  user)
    _op_user
    ;;
  vault)
    _op_vault
    ;;
  whoami)
    _op_whoami
    ;;
  esac
}


function _op_account {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with account.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "add:Add an account to sign in to for the first time"
      "forget:Remove a 1Password account from this device"
      "get:Get details about your account"
      "list:List users and accounts set up on this device"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  add)
    _op_account_add
    ;;
  forget)
    _op_account_forget
    ;;
  get)
    _op_account_get
    ;;
  list)
    _op_account_list
    ;;
  esac
}

function _op_account_add {
  _arguments \
    '--address[The sign-in address for your account.]:' \
    '--email[The email address associated with your account.]:' \
    '(-h --help)'{-h,--help}'[Get help with account add.]' \
    '--raw[Only return the session token.]' \
    '--shorthand[Set the short account name.]:' \
    '--signin[Directly sign in to the added account.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_forget {
  _arguments \
    '--all[Forget all authenticated accounts.]' \
    '(-h --help)'{-h,--help}'[Get help with account forget.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_get {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with account get.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_account_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with account list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_completion {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with completion.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with connect.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "group:Manage group access to Secrets Automation"
      "server:Manage Connect servers"
      "token:Manage Connect tokens"
      "vault:Manage connect server vault access"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  group)
    _op_connect_group
    ;;
  server)
    _op_connect_server
    ;;
  token)
    _op_connect_token
    ;;
  vault)
    _op_connect_vault
    ;;
  esac
}


function _op_connect_group {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with connect group.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a group access to manage Secrets Automation"
      "revoke:Revoke a group's access to manage Secrets Automation"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_connect_group_grant
    ;;
  revoke)
    _op_connect_group_revoke
    ;;
  esac
}

function _op_connect_group_grant {
  _arguments \
    '--all-servers[Grant access to all current and future servers in the authenticated account.]' \
    '--group[The `group` to receive access.]:' \
    '(-h --help)'{-h,--help}'[Get help with connect group grant.]' \
    '--server[The `server` to grant access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_group_revoke {
  _arguments \
    '--all-servers[Revoke access to all current and future servers in the authenticated account.]' \
    '--group[The `group` to revoke access from.]:' \
    '(-h --help)'{-h,--help}'[Get help with connect group revoke.]' \
    '--server[The `server` to revoke access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect_server {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with connect server.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Set up a Connect server"
      "delete:Remove a Connect server"
      "edit:Rename a Connect server"
      "get:Get a Connect server"
      "list:List Connect servers"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_connect_server_create
    ;;
  delete)
    _op_connect_server_delete
    ;;
  edit)
    _op_connect_server_edit
    ;;
  get)
    _op_connect_server_get
    ;;
  list)
    _op_connect_server_list
    ;;
  esac
}

function _op_connect_server_create {
  _arguments \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation when overwriting credential files.]' \
    '(-h --help)'{-h,--help}'[Get help with connect server create.]' \
    '*--vaults[Grant the Connect server access to these vaults.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_delete {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect server delete.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_edit {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect server edit.]' \
    '--name[Change the server'\''s `name`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_get {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect server get.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_server_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect server list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect_token {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with connect token.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Issue a token for a 1Password Connect server"
      "delete:Revoke a token for a Connect server"
      "edit:Rename a Connect token"
      "list:Get a list of tokens"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_connect_token_create
    ;;
  delete)
    _op_connect_token_delete
    ;;
  edit)
    _op_connect_token_edit
    ;;
  list)
    _op_connect_token_list
    ;;
  esac
}

function _op_connect_token_create {
  _arguments \
    '--expires-in[Set how long the Connect token is valid for in (s)econds, (m)inutes, or (h)ours.]:' \
    '(-h --help)'{-h,--help}'[Get help with connect token create.]' \
    '--server[Issue a token for this server.]:' \
    '*--vault[Issue a token on these vaults.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_token_delete {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect token delete.]' \
    '--server[Only look for tokens for this 1Password Connect server.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_token_edit {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect token edit.]' \
    '--name[Change the token'\''s name.]:' \
    '--server[Only look for tokens for this 1Password Connect server.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_token_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect token list.]' \
    '--server[Only list tokens for this Connect `server`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_connect_vault {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with connect vault.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a Connect server access to a vault"
      "revoke:Revoke a Connect server's access to a vault"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_connect_vault_grant
    ;;
  revoke)
    _op_connect_vault_revoke
    ;;
  esac
}

function _op_connect_vault_grant {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect vault grant.]' \
    '--server[The server to be granted access.]:' \
    '--vault[The vault to grant access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_connect_vault_revoke {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with connect vault revoke.]' \
    '--server[The `server` to revoke access from.]:' \
    '--vault[The `vault` to revoke a server'\''s access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_document {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with document.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a document item"
      "delete:Delete or archive a document item"
      "edit:Edit a document item"
      "get:Download a document"
      "list:Get a list of documents"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_document_create
    ;;
  delete)
    _op_document_delete
    ;;
  edit)
    _op_document_edit
    ;;
  get)
    _op_document_get
    ;;
  list)
    _op_document_list
    ;;
  esac
}

function _op_document_create {
  _arguments \
    '--file-name[Set the file'\''s `name`.]:' \
    '(-h --help)'{-h,--help}'[Get help with document create.]' \
    '--tags[Set the tags to the specified (comma-separated) values.]:' \
    '--title[Set the document item'\''s `title`.]:' \
    '--vault[Save the document in this `vault`. Default: Private.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_delete {
  _arguments \
    '--archive[Move the document to the Archive.]' \
    '(-h --help)'{-h,--help}'[Get help with document delete.]' \
    '--vault[Delete the document in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_edit {
  _arguments \
    '--file-name[Set the file'\''s `name`.]:' \
    '(-h --help)'{-h,--help}'[Get help with document edit.]' \
    '--tags[Set the tags to the specified (comma-separated) values. An empty value will remove all tags.]:' \
    '--title[Set the document item'\''s `title`.]:' \
    '--vault[Look up document in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_get {
  _arguments \
    '--force[Force the document to be printed to the shell when printing an unintelligible document to an interactive terminal.]' \
    '(-h --help)'{-h,--help}'[Get help with document get.]' \
    '--include-archive[Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--output[Save the document to the file `path` instead of stdout.]:' \
    '--vault[Look for the document in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_document_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with document list.]' \
    '--include-archive[Include document items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--vault[Only list documents in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_events-api {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with events-api.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Set up an integration with the Events API"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_events-api_create
    ;;
  esac
}

function _op_events-api_create {
  _arguments \
    '--expires-in[Set how the long the events-api token is valid for in (s)econds, (m)inutes, or (h)ours.]:' \
    '*--features[Set the comma-separated list of `features` the integration token can be used for. Options: '\''signinattempts'\'', '\''itemusages'\''.]:' \
    '(-h --help)'{-h,--help}'[Get help with events-api create.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_group {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with group.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a group"
      "delete:Remove a group"
      "edit:Edit a group's name or description"
      "get:Get details about a group"
      "list:List groups"
      "user:Manage group membership"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_group_create
    ;;
  delete)
    _op_group_delete
    ;;
  edit)
    _op_group_edit
    ;;
  get)
    _op_group_get
    ;;
  list)
    _op_group_list
    ;;
  user)
    _op_group_user
    ;;
  esac
}

function _op_group_create {
  _arguments \
    '--description[Set the group'\''s description.]:' \
    '(-h --help)'{-h,--help}'[Get help with group create.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_delete {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with group delete.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_edit {
  _arguments \
    '--description[Change the group'\''s `description`.]:' \
    '(-h --help)'{-h,--help}'[Get help with group edit.]' \
    '--name[Change the group'\''s `name`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_get {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with group get.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with group list.]' \
    '--user[List groups that a `user` belongs to.]:' \
    '--vault[List groups that have direct access to a `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_group_user {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with group user.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Add a user to a group"
      "list:Retrieve users that belong to a group"
      "revoke:Remove a user from a group"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_group_user_grant
    ;;
  list)
    _op_group_user_list
    ;;
  revoke)
    _op_group_user_revoke
    ;;
  esac
}

function _op_group_user_grant {
  _arguments \
    '--group[Specify the group to add the user to.]:' \
    '(-h --help)'{-h,--help}'[Get help with group user grant.]' \
    '--role[Specify the user'\''s role as a member or manager. Default: member.]:' \
    '--user[Specify the user to add to the group.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_user_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with group user list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_group_user_revoke {
  _arguments \
    '--group[Specify the group to remove the user from.]:' \
    '(-h --help)'{-h,--help}'[Get help with group user revoke.]' \
    '--user[Specify the user to remove from the group.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_help {
  _arguments \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_inject {
  _arguments \
    '--file-mode[Set filemode for the output file if it does not yet exist. It is ignored without the --out-file flag.]:' \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation.]' \
    '(-h --help)'{-h,--help}'[Get help with inject.]' \
    '(-i --in-file)'{-i,--in-file}'[The filename of a template file to inject.]:' \
    '(-o --out-file)'{-o,--out-file}'[Write the injected template to a file instead of stdout.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_item {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with item.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create an item"
      "delete:Delete or archive an item"
      "edit:Edit an item's details"
      "get:Get an item's details"
      "list:List items"
      "share:Share an item"
      "template:Manage templates"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_item_create
    ;;
  delete)
    _op_item_delete
    ;;
  edit)
    _op_item_edit
    ;;
  get)
    _op_item_get
    ;;
  list)
    _op_item_list
    ;;
  share)
    _op_item_share
    ;;
  template)
    _op_item_template
    ;;
  esac
}

function _op_item_create {
  _arguments \
    '--category[Set the item'\''s `category`.]:' \
    '--dry-run[Perform a dry run of the command and output a preview of the resulting item.]' \
    '--generate-password[Give the item a randomly generated password.]' \
    '(-h --help)'{-h,--help}'[Get help with item create.]' \
    '--tags[Set the tags to the specified (comma-separated) values.]:' \
    '--template[Specify the filepath to read an item template from.]:' \
    '--title[Set the item'\''s `title`.]:' \
    '--url[Set the `URL` associated with the item]:' \
    '--vault[Save the item in this `vault`. Default: Private.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_delete {
  _arguments \
    '--archive[Move the item to the Archive.]' \
    '(-h --help)'{-h,--help}'[Get help with item delete.]' \
    '--vault[Look for the item in this vault.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_edit {
  _arguments \
    '--dry-run[Perform a dry run of the command and output a preview of the resulting item.]' \
    '--generate-password[Give the item a randomly generated password.]' \
    '(-h --help)'{-h,--help}'[Get help with item edit.]' \
    '--tags[Set the tags to the specified (comma-separated) values. An empty value will remove all tags.]:' \
    '--title[Set the item'\''s `title`.]:' \
    '--url[Set the `URL` associated with the item]:' \
    '--vault[Edit the item in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_get {
  _arguments \
    '*--fields[Only return data from these `fields`. Use '\''label='\'' to get the field by name or '\''type='\'' to filter fields by type.]:' \
    '(-h --help)'{-h,--help}'[Get help with item get.]' \
    '--include-archive[Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--otp[Output the primary one-time password for this item.]' \
    '--share-link[Get a shareable link for the item.]' \
    '--vault[Look for the item in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_list {
  _arguments \
    '*--categories[Only list items in these `categories` (comma-separated).]:' \
    '--favorite[Only list favorite items]' \
    '(-h --help)'{-h,--help}'[Get help with item list.]' \
    '--include-archive[Include items in the Archive. Can also be set using OP_INCLUDE_ARCHIVE environment variable.]' \
    '--long[Output a more detailed item list.]' \
    '*--tags[Only list items with these `tags` (comma-separated).]:' \
    '--vault[Only list items in this `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_share {
  _arguments \
    '*--emails[Email addresses to share with.]:' \
    '--expiry[Link expiring after the specified duration in (s)econds, (m)inutes, or (h)ours (default 7h).]:' \
    '(-h --help)'{-h,--help}'[Get help with item share.]' \
    '--vault[Look for the item in this vault.]:' \
    '--view-once[Expire link after a single view.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_item_template {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with item template.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "get:Get an item template"
      "list:Get a list of templates"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  get)
    _op_item_template_get
    ;;
  list)
    _op_item_template_list
    ;;
  esac
}

function _op_item_template_get {
  _arguments \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation.]' \
    '(-h --help)'{-h,--help}'[Get help with item template get.]' \
    '(-o --out-file)'{-o,--out-file}'[Write the template to a file instead of stdout.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_item_template_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with item template list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_plugin {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with plugin.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "clear:Clear shell plugin configuration"
      "credential:Manage credentials for shell plugins"
      "init:Get started with 1Password Shell Plugins"
      "inspect:Inspect your existing shell plugin configurations"
      "list:List all available shell plugins"
      "run:Provision credentials from 1Password and run this command"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  clear)
    _op_plugin_clear
    ;;
  credential)
    _op_plugin_credential
    ;;
  init)
    _op_plugin_init
    ;;
  inspect)
    _op_plugin_inspect
    ;;
  list)
    _op_plugin_list
    ;;
  run)
    _op_plugin_run
    ;;
  esac
}

function _op_plugin_clear {
  _arguments \
    '--all[Clear all configurations for this plugin that apply to this directory and/or terminal session, including the global default.]' \
    '(-f --force)'{-f,--force}'[Apply immediately without asking for confirmation.]' \
    '(-h --help)'{-h,--help}'[Get help with plugin clear.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_plugin_credential {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with plugin credential.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "import:Import credentials for a shell plugin"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  import)
    _op_plugin_credential_import
    ;;
  esac
}

function _op_plugin_credential_import {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with plugin credential import.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_init {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with plugin init.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_inspect {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with plugin inspect.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with plugin list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_plugin_run {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with plugin run.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_read {
  _arguments \
    '--file-mode[Set filemode for the output file if it does not yet exist. It is ignored without the --out-file flag.]:' \
    '(-f --force)'{-f,--force}'[Do not prompt for confirmation.]' \
    '(-h --help)'{-h,--help}'[Get help with read.]' \
    '(-n --no-newline)'{-n,--no-newline}'[Do not print a new line after the secret.]' \
    '(-o --out-file)'{-o,--out-file}'[Write the secret to a file instead of stdout.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_run {
  _arguments \
    '*--env-file[Enable Dotenv integration with specific Dotenv files to parse. For example: --env-file=.env.]:' \
    '(-h --help)'{-h,--help}'[Get help with run.]' \
    '--no-masking[Disable masking of secrets on stdout and stderr.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_signin {
  _arguments \
    '(-f --force)'{-f,--force}'[Ignore warnings and print raw output from this command.]' \
    '(-h --help)'{-h,--help}'[Get help with signin.]' \
    '--raw[Only return the session token.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_signout {
  _arguments \
    '--all[Sign out of all signed-in accounts.]' \
    '--forget[Remove the details for a 1Password account from this device.]' \
    '(-h --help)'{-h,--help}'[Get help with signout.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_update {
  _arguments \
    '--channel[Look for updates from a specific channel. allowed: stable, beta]:' \
    '--directory[Download the update to this '\'''\''path'\'''\''.]:' \
    '(-h --help)'{-h,--help}'[Get help with update.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_user {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with user.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "confirm:Confirm a user"
      "delete:Remove a user and all their data from the account"
      "edit:Edit a user's name or Travel Mode status"
      "get:Get details about a user"
      "list:List users"
      "provision:Provision a user in the authenticated account"
      "reactivate:Reactivate a suspended user"
      "suspend:Suspend a user"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  confirm)
    _op_user_confirm
    ;;
  delete)
    _op_user_delete
    ;;
  edit)
    _op_user_edit
    ;;
  get)
    _op_user_get
    ;;
  list)
    _op_user_list
    ;;
  provision)
    _op_user_provision
    ;;
  reactivate)
    _op_user_reactivate
    ;;
  suspend)
    _op_user_suspend
    ;;
  esac
}

function _op_user_confirm {
  _arguments \
    '--all[Confirm all unconfirmed users.]' \
    '(-h --help)'{-h,--help}'[Get help with user confirm.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_delete {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with user delete.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_edit {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with user edit.]' \
    '--name[Set the user'\''s name.]:' \
    '--travel-mode[Turn Travel Mode on or off for the user.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_get {
  _arguments \
    '--fingerprint[Get the user'\''s public key fingerprint.]' \
    '(-h --help)'{-h,--help}'[Get help with user get.]' \
    '--me[Get the authenticated user'\''s details.]' \
    '--public-key[Get the user'\''s public key.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_list {
  _arguments \
    '--group[List users who belong to a `group`.]:' \
    '(-h --help)'{-h,--help}'[Get help with user list.]' \
    '--vault[List users who have direct access to `vault`.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_provision {
  _arguments \
    '--email[Provide the user'\''s email address.]:' \
    '(-h --help)'{-h,--help}'[Get help with user provision.]' \
    '--language[Provide the user'\''s account language.]:' \
    '--name[Provide the user'\''s name.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_reactivate {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with user reactivate.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_user_suspend {
  _arguments \
    '--deauthorize-devices-after[Deauthorize the user'\''s devices after a time (rounded down to seconds).]:' \
    '(-h --help)'{-h,--help}'[Get help with user suspend.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_vault {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with vault.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "create:Create a new vault"
      "delete:Remove a vault"
      "edit:Edit a vault's name, description, icon or Travel Mode status"
      "get:Get details about a vault"
      "group:Manage group vault access"
      "list:List all vaults in the account"
      "user:Manage user vault access"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  create)
    _op_vault_create
    ;;
  delete)
    _op_vault_delete
    ;;
  edit)
    _op_vault_edit
    ;;
  get)
    _op_vault_get
    ;;
  group)
    _op_vault_group
    ;;
  list)
    _op_vault_list
    ;;
  user)
    _op_vault_user
    ;;
  esac
}

function _op_vault_create {
  _arguments \
    '--allow-admins-to-manage[Set whether administrators can manage the vault. If not provided, the default policy for the account applies.]:' \
    '--description[Set the group'\''s `description`.]:' \
    '(-h --help)'{-h,--help}'[Get help with vault create.]' \
    '--icon[Set the vault icon.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_delete {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with vault delete.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_edit {
  _arguments \
    '--description[Change the vault'\''s `description`.]:' \
    '(-h --help)'{-h,--help}'[Get help with vault edit.]' \
    '--icon[Change the vault'\''s `icon`.]:' \
    '--name[Change the vault'\''s `name`.]:' \
    '--travel-mode[Turn Travel Mode on or off for the vault. Only vaults with Travel Mode enabled will be accessible while a user has Travel Mode turned on.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_get {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with vault get.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_vault_group {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with vault group.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a group permissions to a vault"
      "list:List all the groups that have access to the given vault"
      "revoke:Revoke a portion or the entire access of a group to a vault"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_vault_group_grant
    ;;
  list)
    _op_vault_group_list
    ;;
  revoke)
    _op_vault_group_revoke
    ;;
  esac
}

function _op_vault_group_grant {
  _arguments \
    '--group[The `group` to receive access.]:' \
    '(-h --help)'{-h,--help}'[Get help with vault group grant.]' \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to grant to the group.]:' \
    '--vault[The `vault` to grant group permissions to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_group_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with vault group list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_group_revoke {
  _arguments \
    '--group[The `group` to revoke access from.]:' \
    '(-h --help)'{-h,--help}'[Get help with vault group revoke.]' \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to revoke from the group.]:' \
    '--vault[The `vault` to revoke access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_list {
  _arguments \
    '--group[List vaults a group has access to.]:' \
    '(-h --help)'{-h,--help}'[Get help with vault list.]' \
    '--user[List vaults that a given user has access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}


function _op_vault_user {
  local -a commands

  _arguments -C \
    '(-h --help)'{-h,--help}'[Get help with vault user.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:' \
    "1: :->cmnds" \
    "*::arg:->args"

  case $state in
  cmnds)
    commands=(
      "grant:Grant a user access to a vault"
      "list:List all users with access to the vault and their permissions"
      "revoke:Revoke a portion or the entire access of a user to a vault"
    )
    _describe "command" commands
    ;;
  esac

  case "$words[1]" in
  grant)
    _op_vault_user_grant
    ;;
  list)
    _op_vault_user_list
    ;;
  revoke)
    _op_vault_user_revoke
    ;;
  esac
}

function _op_vault_user_grant {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with vault user grant.]' \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to grant to the user.]:' \
    '--user[The `user` to receive access.]:' \
    '--vault[The `vault` to grant access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_user_list {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with vault user list.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_vault_user_revoke {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with vault user revoke.]' \
    '--no-input[Do not prompt for `input` on interactive terminal.]' \
    '--permissions[The `permissions` to revoke from the user.]:' \
    '--user[The `user` to revoke access from.]:' \
    '--vault[The `vault` to revoke access to.]:' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}

function _op_whoami {
  _arguments \
    '(-h --help)'{-h,--help}'[Get help with whoami.]' \
    '--account[Select the `account` to execute the command by account shorthand, sign-in address, account ID, or user ID. For a list of available accounts, run '\''op account list'\''. Can be set as the OP_ACCOUNT environment variable.]:' \
    '--cache[Store and use cached information. Cache is enabled by default. The cache is not available on Windows.]' \
    '--config[Use this configuration `directory`.]:' \
    '--debug[Enable debug mode. Can also be enabled by setting the OP_DEBUG environment variable to true.]' \
    '--encoding[Use this character encoding `type`. Default: UTF-8. Supported: SHIFT_JIS, gbk.]:' \
    '--format[Use this output format. Can be '\''human-readable'\'' or '\''json'\''. Can be set as the OP_FORMAT environment variable.]:' \
    '--iso-timestamps[Format timestamps according to ISO 8601 / RFC 3339. Can be set as the OP_ISO_TIMESTAMPS environment variable.]' \
    '--no-color[Print output without color.]' \
    '--session[Authenticate with this session `token`. 1Password CLI outputs session tokens for successful '\''op signin'\'' commands when 1Password app integration is not enabled.]:'
}
