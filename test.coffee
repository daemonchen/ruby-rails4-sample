target = []
result = []
for i in [1..100]
  for j in [1..100]
    if j%i is 0
      target.push 'off' unless target[j]
      target[i] = 'off' if target[i]?
    else
      target.push 'on' unless target[j]
      target[i] = 'on' if target[i]?

for key,value of target
  if value is 'on'
    result.push key

console.log result.length
