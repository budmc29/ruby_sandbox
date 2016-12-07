class SymetricCipher
  require 'openssl'
  require 'digest/sha1'

  # TODO: fix decrypt error
  def decrypt(string = nil)
    string ||= 'MfWFEWXWoiG1/7Mt9MXATw=='
    cipher = OpenSSL::Cipher::Cipher.new('aes-256-cbc')

    cipher.decrypt
    cipher.key = Digest::SHA1.hexdigest('tOpSeCreT')
    cipher.iv = '1234567890abcdef' * 2

    plaintext = cipher.update(string.unpack('m*').to_s)
    plaintext << cipher.final
    puts plantext
  end

  def encrypt(string)
    cipher = OpenSSL::Cipher::Cipher.new('aes-256-cbc')

    cipher.encrypt
    cipher.key = Digest::SHA1.hexdigest('tOpSeCreT')
    cipher.iv = '1234567890abcdef' * 2

    ciphertext = cipher.update(string)
    ciphertext << cipher.final
    ciphertext = [ciphertext].pack('m*')
  end
end

cypher = SymetricCipher.new
puts cypher.encrypt('test')
