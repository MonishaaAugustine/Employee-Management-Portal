-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 09:26 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appraisal`
--

CREATE TABLE `appraisal` (
  `appr_id` int(11) NOT NULL,
  `appr_emp_id` int(11) NOT NULL,
  `appr_manager_name` varchar(255) NOT NULL,
  `appr_comm_point` varchar(255) NOT NULL,
  `appr_team_point` varchar(255) NOT NULL,
  `appr_prog_point` varchar(255) NOT NULL,
  `appr_write_point` varchar(255) NOT NULL,
  `appr_client_point` varchar(255) NOT NULL,
  `appr_database_point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appraisal`
--

INSERT INTO `appraisal` (`appr_id`, `appr_emp_id`, `appr_manager_name`, `appr_comm_point`, `appr_team_point`, `appr_prog_point`, `appr_write_point`, `appr_client_point`, `appr_database_point`) VALUES
(1, 1002, 'Manpreet Kaur', 'good', 'good', 'good', 'good', 'good', 'good'),
(2, 1004, 'Sumanpreet Kaur', 'good', 'good', 'good', 'good', 'good', 'good'),
(3, 1005, 'Rasmeet kour', '4', '5', '4', '5', '5', '5'),
(4, 1007, 'Bhumika patel', 'good', 'good', 'good', 'good', 'good', 'good'),
(5, 1002, 'suman', 'good', 'good', 'good', 'good', 'good', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Vadodara'),
(4, 'Surat'),
(5, 'Ahmedabad'),
(6, 'Kolkatta');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'IT Department'),
(2, 'Java Developement'),
(3, 'HR Department'),
(4, 'Web Developement');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_user` varchar(255) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `employee_level` int(11) NOT NULL DEFAULT '3',
  `employee_sal` varchar(100) NOT NULL,
  `employee_first_name` varchar(100) NOT NULL,
  `employee_middle_name` varchar(100) NOT NULL,
  `employee_last_name` varchar(100) NOT NULL,
  `employee_gender` varchar(100) NOT NULL,
  `employee_address` varchar(100) NOT NULL,
  `employee_village` varchar(100) NOT NULL,
  `employee_state` varchar(100) NOT NULL,
  `employee_country` varchar(100) NOT NULL,
  `employee_landline` varchar(100) NOT NULL,
  `employee_mobile` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_status` varchar(255) NOT NULL,
  `employee_deparment` varchar(255) NOT NULL,
  `employee_dob` varchar(255) NOT NULL,
  `employee_nationalty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_user`, `employee_password`, `employee_level`, `employee_sal`, `employee_first_name`, `employee_middle_name`, `employee_last_name`, `employee_gender`, `employee_address`, `employee_village`, `employee_state`, `employee_country`, `employee_landline`, `employee_mobile`, `employee_email`, `employee_status`, `employee_deparment`, `employee_dob`, `employee_nationalty`) VALUES
(1001, 'sumanpreet', 'test', 1, '1', 'suman', 'Kaur', 'kaur', 'Female', 'A : 42/6', 'Punjab', '4', '1', '', '09876543212', 'suman@gmail.com', '2', '1', '12 January, 2022', 'Indian'),
(1002, 'manpreet', 'test', 1, '2', 'manpreet', 'kaur', 'kaur', 'Female', 'A : 42/6', 'Punjab', '1', '1', '', '09876543212', 'manpreet@gmail.com', '4', '3', '12 January, 2022', 'Indian'),
(1003, 'monisha', 'test', 1, '1', 'monisha', 'Augustine', 'Augustine', 'Female', 'A : 42/6', 'Tamilnadu', '1', '1', '', '09876543212', 'monisha@gmail.com', '2', '1', '12 January, 2022', 'Indian'),
(1004, 'bhumika', 'test', 1, '2', 'bhumika', 'Patel', 'Patel', 'Female', 'A : 42/6', 'Gujarat', '4', '1', '', '09876543212', 'bhumika@gmail.com', '2', '2', '12 January, 2022', 'Indian'),
(1005, 'test', 'test', 1, '2', 'test', 'test', 'test', 'Male', 'A : 42/6', 'test', '4', '1', '', '09876543212', 'test@gmail.com', '1', '1', '12 January, 2022', 'Indian'),
(1007, 'rasmeet', 'test', 1, '2', 'Rasmeet', 'Kour', 'Kour', 'Female', '', 'Jammu', '0', '1', '', '', 'rasmeet@gmail.com', '3', '1', '1 February, 2022', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL,
  `leave_employee_id` varchar(10) NOT NULL,
  `leave_reason` varchar(300) NOT NULL,
  `leave_description` varchar(300) NOT NULL,
  `leave_from_date` varchar(300) NOT NULL,
  `leave_to_date` varchar(300) NOT NULL,
  `leave_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`leave_id`, `leave_employee_id`, `leave_reason`, `leave_description`, `leave_from_date`, `leave_to_date`, `leave_status`) VALUES
(1, '1002', 'Going to Home', 'Going to home some urgent work', '12 January, 2022', '13 January, 2022', 2),
(2, '1003', 'Sister Marriege', 'Going to home for sister marriege', '18 January, 2022', '19 January, 2022', 2),
(3, '1004', 'Going to Home', 'Going to Home', '12 January, 2022', '19 January, 2022', 2),
(4, '1004', 'Going to Home', 'Going to Home', '12 January, 2022', '19 January, 2022', 2),
(5, '1005', 'Going for exam', 'Going for exam ', '12 January, 2022', '19 January, 2022', 0),
(6, '0', 'asdfad', 'asfda', '4 June,2022', '4 June, 2022', 0),
(7, '1001', 'dsaf', 'adsf', '8 July,2022', '15 July,2022', 2),
(8, '1002', 'Going to Home for marreige', 'Going to Home for marreige', '1 July,2022', '2 July,2022', 0),
(9, '1002', 'Going to Home', 'Working on Employee Section', '11 July,2022', '12 July,2022', 0),
(10, '1016', 'Going to Home', 'Going to home for some urgent work', '30 July,2022', '31 July,2022', 2),
(11, '1002', 'asdf', 'asdf', '11 April,2022', '13 April,2022', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_emp_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` int(11) NOT NULL DEFAULT '3',
  `login_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_emp_id`, `login_user`, `login_password`, `login_level`, `login_email`) VALUES
(1, 1001, 'admin', '1234', 1, 'admin@gmail.com'),
(6, 1002, 'employee', 'test', 3, 'employee@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_type_id` varchar(255) NOT NULL,
  `project_manager_id` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `project_frontend` varchar(255) NOT NULL,
  `project_backend` varchar(255) NOT NULL,
  `project_client_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_type_id`, `project_manager_id`, `project_title`, `project_description`, `project_frontend`, `project_backend`, `project_client_name`) VALUES
(10001, '1', '1001', 'Project on safety kids', 'Java and SQL Server Project', 'Java', 'SQL Server 200o', 'Rushank Shah'),
(10002, '2', '1002', 'Project on de thali', 'PHP and MySQL Project', 'PHP', 'MySQL', 'Rohan Shah'),
(10004, '2', '1003', 'Smart home system', 'PHP and MySQL Project', 'PHP', 'MySQL', 'Ronak Mehta'),
(10005, '2', '1003', 'BookStar', 'PHP and MySQL Project', 'PHP', 'MySQL', 'Priya Sindhkar');

-- --------------------------------------------------------

--
-- Table structure for table `project_assignment`
--

CREATE TABLE `project_assignment` (
  `pra_id` int(11) NOT NULL,
  `pra_emp_id` int(11) NOT NULL,
  `pra_prj_id` int(11) NOT NULL,
  `pra_assgindate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_assignment`
--

INSERT INTO `project_assignment` (`pra_id`, `pra_emp_id`, `pra_prj_id`, `pra_assgindate`) VALUES
(1, 1002, 10001, '17 July,2022'),
(2, 1016, 10004, '10 July,2022'),
(3, 1001, 10001, '16 July,2022'),
(4, 1001, 10005, '1 February,2022'),
(5, 1002, 10002, '1 February,2022');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `sal_id` int(11) NOT NULL,
  `sal_employe_id` int(11) NOT NULL,
  `sal_month` varchar(100) NOT NULL,
  `sal_year` varchar(100) NOT NULL,
  `sal_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`sal_id`, `sal_employe_id`, `sal_month`, `sal_year`, `sal_amount`) VALUES
(1, 1002, '1', '2022', '1000'),
(2, 1002, '10', '2022', '2000'),
(3, 1002, '4', '2022', '1000'),
(4, 1007, '3', '2022', '15000'),
(5, 1001, '3', '2019', '15000');

-- --------------------------------------------------------

--
-- Table structure for table `salutions`
--

CREATE TABLE `salutions` (
  `sl_id` int(11) NOT NULL,
  `sl_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salutions`
--

INSERT INTO `salutions` (`sl_id`, `sl_name`) VALUES
(1, 'Mr.'),
(2, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_employe_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_grade` varchar(255) NOT NULL,
  `skill_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill_id`, `skill_employe_id`, `skill_name`, `skill_grade`, `skill_description`) VALUES
(1, 1002, 'Java', '5', 'Java'),
(2, 1002, 'PHP', '5', 'PHP'),
(3, 1003, 'MySQL', '5', 'MySQL'),
(4, 1003, 'JSP', '5', 'JSP'),
(5, 1003, 'Python', '5', 'Python'),
(6, 1002, 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Jammu'),
(2, 'Gujrat'),
(3, 'Tamilnadu'),
(4, 'Punjab'),
(5, 'Delhi'),
(6, 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Manager'),
(2, 'Worker'),
(3, 'Intern'),
(4, 'Fresher');

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `timesheet_id` int(11) NOT NULL,
  `timesheet_employee_id` varchar(200) NOT NULL,
  `timesheet_project_id` varchar(200) NOT NULL,
  `timesheet_work_title` varchar(200) NOT NULL,
  `timesheet_description` varchar(200) NOT NULL,
  `timesheet_hours` varchar(200) NOT NULL,
  `timesheet_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`timesheet_id`, `timesheet_employee_id`, `timesheet_project_id`, `timesheet_work_title`, `timesheet_description`, `timesheet_hours`, `timesheet_date`) VALUES
(1, '1002', '10001', 'Working on Employee Section', 'Working on Employee Section', '2', '1 July,2022'),
(2, '1003', '10002', 'Working on Employee Section', 'Working on Employee Section', '8', '1 July,2022'),
(3, '1002', '10002', 'Working on Salary Section', 'Working on Salary Section', '8', '1 July,2022'),
(4, '1002', '10001', 'Working on Login Section', 'Working on Login Section', '8', '1 June,2022'),
(5, '1002', '10002', 'Working on Employee Section', 'Working on Employee Section', '8', '7 July,2022'),
(6, '1002', '10001', 'Working on Employee Section', 'Working on Employee Section', '8', '1 July,2022'),
(7, '1003', '10001', 'Working on the Login Section', 'Working on the Login Section', '8', '1 July,2022'),
(8, '1014', '10001', 'Working on Change Password Section', 'Working on Change Password Section', '8', '14 July,2022'),
(9, '1016', '10001', 'Working on the Login Section', 'Working on the Login Section', '8', '16 July,2022');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_title`) VALUES
(1, 'Maintenance Project'),
(2, 'New Project');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appraisal`
--
ALTER TABLE `appraisal`
  ADD PRIMARY KEY (`appr_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_assignment`
--
ALTER TABLE `project_assignment`
  ADD PRIMARY KEY (`pra_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`sal_id`);

--
-- Indexes for table `salutions`
--
ALTER TABLE `salutions`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`timesheet_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appraisal`
--
ALTER TABLE `appraisal`
  MODIFY `appr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10006;

--
-- AUTO_INCREMENT for table `project_assignment`
--
ALTER TABLE `project_assignment`
  MODIFY `pra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `sal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salutions`
--
ALTER TABLE `salutions`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `timesheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
