module Todo

    class Task < Model
        validates :title, length: { in: 2..80 }

        before_save do
            self.title=Sanitize.fragment(self.title.strip)
        end
    end

end
