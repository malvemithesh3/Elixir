defmodule BasicTypes.MapsAndDataStruct do
  def main do
    list1 = String.split("1  2  3"," ",[trim: true])
    IO.inspect(list1)
    list2 = [x: 12, y: 23]
    IO.inspect(list2 ++ [z: 37])
    IO.inspect([k: 7] ++ list2)
    IO.inspect(list2[:x])
    map = %{:x => 1, 2 => :y}
    IO.inspect(map)
    IO.inspect(map[2])
    IO.inspect(map[:c])
    IO.inspect(Map.get(%{:a => 12, 13 => :Hi}, 13))
    IO.inspect(Map.put(%{:a => 12, 13 => :Hi}, 77, :g))
    IO.inspect(Map.to_list(%{:a => 12, 13 => :Hi}))
    map1 = %{name: "Mithesh" ,age: 23}
    IO.puts(map1.name)
    map2 = %{map1 | name: "Kumar"}
    IO.inspect(map2)
    student_profile = %{
      name: "Mithesh", age: 23, courses: [%{ course_name: "AI Programming", instructor: "Dr. Smith", grades: %{midterm: 85, final: 90}},
        %{ course_name: "Elixir Basics", instructor: "Mr. Doe", grades: %{midterm: 80, final: 88}}],
      address: %{ street: "123 Elm Street", city: "Berlin", country: "Germany"}}
    IO.puts("Name: #{student_profile.name}")
    IO.puts("City: #{student_profile.address.city}")
    ai_final_grade = student_profile[:courses]
    first_course = hd(ai_final_grade)
    grades = first_course[:grades]
    final_grade = grades[:final]
    IO.puts("AI Final Grade: #{final_grade}")
    updated_profile = put_in(student_profile[:address][:city], "Munich")
    IO.inspect(updated_profile, label: "Updated Profile")
  end
end
