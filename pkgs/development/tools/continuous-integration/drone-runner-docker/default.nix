{ lib, fetchFromGitHub, buildGoModule }:

buildGoModule rec {
  pname = "drone-runner-docker";
  version = "1.8.2";

  src = fetchFromGitHub {
    owner = "drone-runners";
    repo = pname;
    rev = "refs/tags/v${version}";
    sha256 = "sha256-ZpkVfzqeltZSYrKYB6dXtlVjl1uFpQdl2fa+c5ApiW4=";
  };

  vendorSha256 = "sha256-KcNp3VdJ201oxzF0bLXY4xWHqHNz54ZrVSI96cfhU+k=";

  meta = with lib; {
    maintainers = with maintainers; [ endocrimes indeednotjames ];
    license = licenses.unfreeRedistributable;
    homepage = "https://github.com/drone-runners/drone-runner-docker";
    description = "Drone pipeline runner that executes builds inside Docker containers";
  };
}
