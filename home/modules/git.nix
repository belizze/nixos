{
  programs.git = {
    enable = true;
    userName = "sysnet";
    userEmail = "belize@envs.net";

    extraConfig = {
      credential.helper = "manager";
      credential.credentialStore = "cache";

      credential."https://github.com".username = "simxnet";
      credential."https://git.yuzucchii.xyz".username = "simxnet";
      credential."https://git.yuzucchii.xyz".provider = "generic";

      includeIf."gitdir:~/Projects/github/".path = "~/.config/git/config.github";
      includeIf."gitdir:~/Projects/gitea/".path = "~/.config/git/config.gitea";
    };
  };

  home.file.".config/git/config.github".text = ''
    [user]
      name = sysnet
      email = simxnet@envs.net
  '';

  home.file.".config/git/config.gitea".text = ''
    [user]
      name = sysnet
      email = belize@envs.net
  '';
}

