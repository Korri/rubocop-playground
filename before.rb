# frozen_string_literal: true

class A
  def bad(a, b,
    c)
    method(really_long_parameter_name, clearly_this_is_gonna_end_up_being_too_long, if_we_keep_pushing_it, right,
      right, right)
    @long_array = [this_is_also_gonna_be_a_long_one, that_we_will_automatically_wrap_on_multiple_lines,
                   we_need_more_length, so_we_can_reach_the_limit,]
    @long_hash = { of: course, this: "bahaviour also works with hashes definitions", that: would,
                   have: "been kept on two lines in the past", }
  end

  def bad2(defining, a, long, method, will = "also wrap propelly, watherver the kind of arguments",
    even: { named: "arguments" })
    do_nothing
  end

  def good(a, b, c, d)
    method({
      ok: "Simple wrappings are OK!",
    })
    @one_value_array = [{
      ok: "Simple arrays too!",
    }]
    method(_or_, even, wrapped, last, argument, {
      ok: "can be multi line",
    })
  end

  def good2(abc, this_is_multiline_but_last = {
    long_hash_argument_name: "and value",
  })
    do_nothing
  end
end
