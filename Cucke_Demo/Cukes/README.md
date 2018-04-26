# jetbrains_support

0. cd into project directory
1. gem install bundler
2. bundle install
3. In RubyMine, set breakpoint on line 7 of jetbrains_steps.rb
4. Debug the scenario in the jetbrains_support.feature file
5. When execution halts at breakpoint, click the Evaluate Expression button
6. Enter an arbitrary selenium command: @browser.page_source
7. Wait for timeout, note stack trace.
