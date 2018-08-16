
def encrypt(char, shift) 
	alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

	num = alphabet.index(char.upcase)

	if num.nil?
		char
	else
		enc = ( num + shift ) % 26
		alphabet[enc].downcase
	end
end


if ARGV.length != 2
  puts "We need exactly two arguments"
  exit
end

filePath = ARGV[0]
encryptionShift = ARGV[1]



newText = ""

File.open(filePath,"r").each do |line|
	line.split("").each do |char|
		newText << encrypt(char,encryptionShift.to_i)
	end
end


puts "Encryption completed. Check encrypted.txt"


File.open("encrypted.txt", "w") { |file| file.write(newText) }