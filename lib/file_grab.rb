require "file_grab/version"

module FileGrab
  def self.files(file_type = 'txt')
    root = Dir.pwd
    @files = []
    files = Dir["*." + file_type]
    files.each do |f|
      @files << File.join(root, f)
    end
    @files
  end
end
