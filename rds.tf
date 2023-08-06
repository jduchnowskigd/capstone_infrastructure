resource "aws_db_instance" "database" {
  identifier             = "database"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "8.0.34"
  username               = "petclinic"
  password               = "petclinic"
  vpc_security_group_ids = [aws_security_group.sg.id]
  parameter_group_name   = aws_db_parameter_group.database.name
  db_subnet_group_name    = aws_db_subnet_group.database.name
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "aws_db_subnet_group" "database" {
  name       = "database"
  subnet_ids = [aws_subnet.public_eu_west_1a.id, aws_subnet.public_eu_west_1b.id]

  tags = {
    Name    = "db_subnet"
    Owner   = "jduchnowski"
    Project = "2023_internship_gda"
  }
}

resource "aws_db_parameter_group" "database" {
  name   = "database"
  family = "mysql8.0"

}
