PROJECT = drover

DEPS = cowboy eper epocxy vbisect
dep_epocxy  = git https://github.com/duomark/epocxy 0.9.8
dep_vbisect = git https://github.com/jaynel/vbisect 0.1.2
V = 0

TEST_DEPS = proper

PLATFORM_OPTS := `erlc -o ebin src/drover_compile_utils.erl ; erl -noshell -pa ebin -s drover_compile_utils platform_opts -s init stop`

ERLC_OPTS := +debug_info +"{cover_enabled, true}" ${PLATFORM_OPTS}

# Needed for testing
TEST_ERLC_OPTS := -I include $(ERLC_OPTS)
CT_OPTS := -cover test/drover.coverspec
# CT_SUITES := drover_basic

# DIALYZER_OPTS := -I include test/drover -Werror_handling -Wrace_conditions -Wunmatched_returns
# DIALYZER_OPTS ?= -r deps/epocxy/src ${PLATFORM_OPTS} -Werror_handling -Wrace_conditions -Wunmatched_returns

include erlang.mk
