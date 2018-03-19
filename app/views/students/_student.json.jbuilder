json.extract! student, :id, :nama, :nohp, :kelas, :profilephoto, :created_at, :updated_at
json.url student_url(student, format: :json)
