local mqtt = require 'paho.mqtt'
local socket = require 'socket'

local stop = false
local callback = function(topic, payload)
  print(string.format('Hey, %s just received: %s.', topic, payload))
  if payload == 'stop' then
    stop = true
  end
end

-- Connect
local client = mqtt.client.create('test.mosquitto.org', 1883, callback)
client:connect('paho-lua-client-sample-identifier')

-- Subscribe to topic
local topic = 'topic/sample'
client:subscribe({topic})

-- Wait for publication
math.randomseed(os.time())
while not stop do

  -- Publish something on topic
  local message = math.random(0, 1) == 0 and 'Go on child' or 'stop'
  client:publish(topic, message)

  -- Wait gently
  client:handler()
  socket.sleep(1)

end

-- Cleaning up
client:unsubscribe({topic})
client:disconnect()
client:destroy()
