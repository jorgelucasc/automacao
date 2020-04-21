# begin
#     file = File.open('./ola.txt')
#     if file
#         puts file.read
#     end
# rescue exception => e
#     puts e
# end

def soma(n1,n2)
    n1+n2
rescue Exception => e
    puts e.message
end

soma('10',2)