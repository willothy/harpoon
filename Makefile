fmt:
	echo "===> Formatting"
	stylua lua/ --config-path=.stylua.toml

lint:
	echo "===> Linting"
	luacheck lua/ --globals vim

test:
	echo "===> Testing"
	nvim --headless --clean -u "lua/harpoon/test/minimal_init.lua" -c "PlenaryBustedDirectory lua/harpoon/test"

pr-ready: fmt lint test
