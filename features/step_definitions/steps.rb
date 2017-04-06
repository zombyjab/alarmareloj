require './reloj'

Given(/^una alarma definida a las (.*)$/) do |hora|
  @reloj= Reloj.new
  @reloj.definir!(hora)
end

Given(/^se encuentra prendida$/) do
  @reloj.prender!
end

When(/^son las (.*)$/) do |hora|
  @sonando = @reloj.sonar?(hora)
end

Then(/^esta sonando$/) do
  expect(@sonando).to be true
end

Then(/^no esta sonando$/) do
  expect(@sonando).to be false
end
