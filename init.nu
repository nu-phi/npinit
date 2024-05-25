

# - REQUIRE INSTALLATION OF rustup (rustc, rustup, calrgo)
# - most of the other deps we'll handle with cargo

let deps = [
	nu,
	starship,
	rg,
	fzf,
	zoxide,
	bacon,
	broot,
	nvim,                                                                       
	# wezterm  ## - requires a manual compilation step
]

# TODO - proper each deps
$deps | each { |d| cargo install $d }  


# - I've include a dir with notepad++ as fallback for everything
# - not touching nvim today

$env.NP_DEPS = ./bin
$env.ZIG = ./zig


## - > for i'll put a copuy of nushell to where it register its Patu, not final struct

cp nushell/ /usr/Appata/Roaming/nushell			### this will change very soon!


# if a module/dep has an init.nu, should be ran after repo-clone & compile.
# e.g - '.weztern.lua' in wezterm dir is a config file that should live @ home (so wezterm/init.nu will be move the pointer file (it points to ./np_config.nu))