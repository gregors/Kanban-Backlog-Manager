
pdf.font "Helvetica"
  
if ! @story.component.nil?
  pdf.fill_color "cccccc"
  pdf.text "#{@story.component.title}", :size => 12, :style => :bold, :spacing => 4
  pdf.move_down 5
end

pdf.fill_color "000000"
pdf.text "#{@story.title}", :size => 14, :style => :bold, :spacing => 4

pdf.move_down 8
pdf.text "Description:", :size => 10, :style => :bold
pdf.text "#{@story.description}", :size => 10, :spacing => 16

pdf.move_down 5
pdf.text "How to demo:", :size => 10, :style => :bold
pdf.text "#{@story.how_to_demo}", :size => 10, :spacing => 16


#story points
pdf.stroke_rounded_rectangle([300, 30], 50, 40, 5)
pdf.font_size 20
pdf.draw_text "#{@story.storypoint_value.value unless @story.storypoint_value.nil?}", :at => [320, 2]

#business value
pdf.stroke_rounded_rectangle([220, 30], 60, 40, 5)
pdf.font_size 20
pdf.draw_text "#{@story.business_value.value unless @story.business_value.nil?}", :at => [230, 2]

#started_at ended at
pdf.stroke_rounded_rectangle([0, 30], 180, 40, 5)
pdf.font_size 12
pdf.draw_text "Started: ", :at => [2, 15]
pdf.draw_text "Finished: ", :at => [2, 1]