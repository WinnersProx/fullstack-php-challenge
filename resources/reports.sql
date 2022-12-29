-- -------------------------------------------------------------
-- TablePlus 5.1.0(468)
--
-- https://tableplus.com/
--
-- Database: spam_tracker
-- Generation Time: 2022-12-29 13:32:48.3960
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` binary(16) NOT NULL,
  `sourceIdentityId` binary(16) NOT NULL,
  `source` varchar(20) NOT NULL,
  `referenceId` binary(16) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `state` varchar(10) NOT NULL,
  `payload` json NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `reports` (`id`, `sourceIdentityId`, `source`, `referenceId`, `reference`, `state`, `payload`, `created`) VALUES
(X'815D9D6286B011ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'CLOSED', '{\"source\": \"REPORT\", \"message\": null, \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57'),
(X'8D25ECF886B011ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'OPEN', '{\"source\": \"REPORT\", \"message\": \"Something bad is happening, this seems to be a bad interface to track it down\", \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57'),
(X'CB4938BA86AF11ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'OPEN', '{\"source\": \"REPORT\", \"message\": \"An attack has been detected in some of the clients apps\", \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57'),
(X'CB4938E286AF11ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'OPEN', '{\"source\": \"REPORT\", \"message\": null, \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57'),
(X'D26E8A0086EB11ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'OPEN', '{\"source\": \"REPORT\", \"message\": \"The website is redirecting to other websites\", \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57'),
(X'E631D26886EB11ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'OPEN', '{\"source\": \"REPORT\", \"message\": null, \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57'),
(X'F112E23086EB11ED974F202E8615D7F9', X'CB4938E286AF11ED974F202E8615D7F9', 'REPORT', X'CB4938EC86AF11ED974F202E8615D7F9', 'REPORT', 'OPEN', '{\"source\": \"REPORT\", \"message\": \"Something is broken on the main page, seems to fetch content from 3rd party APIS\", \"reportId\": \"6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429\", \"reportType\": \"SPAM\", \"referenceResourceId\": \"a03411ce-0197-49a2-86d4-55e06aa52e79\", \"referenceResourceType\": \"REPLY\"}', '2022-12-28 14:58:57');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
