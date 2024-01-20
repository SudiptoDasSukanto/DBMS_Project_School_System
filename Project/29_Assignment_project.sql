-- Teacher Allocation table allocated the teacher for a specific course in a class. 
--I generate teacher allocation id by course 3 char name and teacher id also with class id add increse the last 3 digit number according to it existence.
-- when we call the procedure it trriger the trriger and it call the function .
-- new Allocation function create the id for new Allocation
-- course name (3 char) _ teacher id _ class id _ 3 digit number
-- class must be existed in class table also teacher should be also course
-- I avoid some things , like we can allocate a teacher a same course again. 
-- This is for just function work showing . 
-- If we insert same teacher same course same class it increase it allocation number by plusing 1
-- for clearly showing the work I ignore some things.

create or replace function newAllocation(courseid in number,teacherid in number , classid in number) return varchar2 as
   arShortCode varchar2(3);
	oldAllocation number(3);
    courseName varchar(100);

begin
    select course_name into courseName from Courses where course_id = courseid; 
	if courseName = 'Mathematics' then
		arShortCode := 'MAT';
	elsif courseName = 'History of Civilization' then
		arShortCode := 'HOC';
	elsif courseName = 'English Literature' then
		arShortCode := 'ENL';
    elsif courseName = 'Biology Lab' then
		arShortCode := 'BIL';
	else
		arShortCode := '---';
	end if;
	select nvl(max(substr(allocation_id,8)),0) into oldAllocation
		from teacher_allocation
		where allocation_id like arShortCode|| teacherid || classid || '%';
	oldAllocation := oldAllocation + 1;
	return arShortCode|| teacherid || classid || lpad(oldAllocation, 3, '0');
end;


create or replace trigger trg_alcid_bef_ins
before insert or update on teacher_allocation
for each row
begin
	:new.allocation_id := newAllocation(:new.course_id,:new.teacher_id,:new.class_id);
end;

create or replace procedure addNewAllocation(course_id in number, teacher_id in number, class_id in number) as
newAllocation varchar2(15);
begin
	insert into  teacher_allocation(course_id, teacher_id, class_id)
        values(course_id, teacher_id,class_id) returning allocation_id into newAllocation;
    dbms_output.put_line('Congratulations! A new teacher '||newAllocation||' is Inserted!');
end;


exec addNewAllocation(5,101,101);

create table teacher_allocation(
    allocation_id varchar2(15),
    course_id number,
    teacher_id number,
    class_id number,
    foreign key (course_id) references Courses(course_id),
    foreign key (teacher_id) references Teachers(teacher_id),
    foreign key (class_id) references Classes(class_id)
);