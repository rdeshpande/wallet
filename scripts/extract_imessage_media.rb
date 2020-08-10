require 'fileutils'

backup_id = "00008020-00040D3901D2002E"

Dir.glob("/Users/rdeshpande/Library/Application Support/MobileSync/Backup/#{backup_id}/*/*").each do |file|
  mime = `file --mime-type "#{file}"`.split(":").last.strip
  puts(mime)
  case mime
  when 'video/quicktime'
    puts "FOUND: #{file}"
    mtime = File.mtime(file).strftime("%Y%m%d-%H%M")
    new_video_filename = "video_#{rand(1000)}_#{mtime}.mov"
    FileUtils.cp(file, new_video_filename)
  else
  end
end

# 
# select distinct attachment.filename from chat_handle_join join handle on handle.ROWID = chat_handle_join.handle_id join message on message.handle_id = handle.ROWID join message_attachment_join on message_attachment_join.message_id = message.ROWID join attachment on attachment.ROWID = message_attachment_join.attachment_id where handle.id = '+13474063988';
