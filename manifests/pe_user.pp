define user::pe_user (
  $ensure     = undef,
  $comment    = undef,
  $gid        = undef,
  $groups     = undef,
  $home       = undef,
  $locked     = undef,
  $managehome = undef,
  $membership = undef,
  $password   = undef,
  $shell      = undef,
  $sshkeys    = undef,
  $uid        = undef,

  # metaparameters
  $alias             = undef,
  $audit             = undef,
  $before            = undef,
  $loglevel          = undef,
  $noop              = undef,
  $notify            = undef,
  $require           = undef,
  $schedule          = undef,
  $subscribe         = undef,
  $tag               = undef,
) {

  if ! defined(User[$title]) {
    pe_accounts::user { $title:
      ensure     => $ensure,
      comment    => $comment,
      gid        => $gid,
      groups     => $groups,
      home       => $home,
      locked     => $locked,
      managehome => $managehome,
      membership => $membership,
      password   => $password,
      shell      => $shell,
      sshkeys    => $sshkeys,
      uid        => $uid,
    
      # metaparameters
      alias      => $alias,
      audit      => $audit,
      before     => $before,
      loglevel   => $loglevel,
      noop       => $noop,
      notify     => $notify,
      require    => $require,
      schedule   => $schedule,
      subscribe  => $subscribe,
      tag        => $tag,
    }
  }
}
