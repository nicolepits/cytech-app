-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: ebooks
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `synopsis` longtext,
  `author` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Harry Potter and the Philosopher\'s Stone','Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents but failed to kill Harry when he was just 15 months old.','J.K. Rowling',1997,'Fantasy, Teenage Fiction'),(2,'Harry Potter and the Chamber of Secrets','Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and the second novel in the Harry Potter series. The plot follows Harry\'s second year at Hogwarts School of Witchcraft and Wizardry, during which a series of messages on the walls of the school\'s corridors warn that the \"Chamber of Secrets\" has been opened and that the \"heir of Slytherin\" would kill all pupils who do not come from all-magical families. These threats are found after attacks that leave residents of the school petrified. Throughout the year, Harry and his friends Ron and Hermione investigate the attacks.','J.K. Rowling',1998,'Fantasy, Teenage Fiction'),(3,'Harry Potter and the Prisoner of Azkaban','Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry. Along with friends Ronald Weasley and Hermione Granger, Harry investigates Sirius Black, an escaped prisoner from Azkaban, the wizard prison, believed to be one of Lord Voldemort\'s old allies. ','author1',1999,'Fantasy, Teenage Fiction'),(4,'Harry Potter and the Order of the Phoenix','Harry Potter and the Order of the Phoenix is a fantasy novel written by British author J. K. Rowling and the fifth novel in the Harry Potter series. It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic. The novel was published on 21 June 2003 by Bloomsbury in the United Kingdom, Scholastic in the United States, and Raincoast in Canada. It sold five million copies in the first 24 hours of publication.','J.K. Rowling',2003,'Fantasy, Teenage Fiction'),(5,'Harry Potter and the Goblet of Fire','Harry Potter and the Goblet of Fire is a fantasy novel written by British author J. K. Rowling and the fourth novel in the Harry Potter series. It follows Harry Potter, a wizard in his fourth year at Hogwarts School of Witchcraft and Wizardry, and the mystery surrounding the entry of Harry\'s name into the Triwizard Tournament, in which he is forced to compete. ','J.K. Rowling',2000,'Fantasy, Teenage Fiction'),(6,'Harry Potter and the Half-Blood Prince','Harry Potter and the Half-Blood Prince is a fantasy novel written by British author J. K. Rowling and the sixth and penultimate novel in the Harry Potter series. Set during Harry Potter\'s sixth year at Hogwarts, the novel explores the past of the boy wizard\'s nemesis, Lord Voldemort, and Harry\'s preparations for the final battle against Voldemort alongside his headmaster and mentor Albus Dumbledore. ','J.K. Rowling',2005,'Fantasy, Teenage Fiction'),(7,'Harry Potter and the Deathly Hallows','Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel in the Harry Potter series. It was released on 21 July 2007 in the United Kingdom by Bloomsbury Publishing, in the United States by Scholastic, and in Canada by Raincoast Books. The novel chronicles the events directly following Harry Potter and the Half-Blood Prince (2005) and the final confrontation between the wizards Harry Potter and Lord Voldemort.','J.K. Rowling',2007,'Fantasy, Teenage Fiction'),(8,'33','3','33',3,'3'),(9,'The Fellowship of the Ring','The title refers to the story\'s main antagonist,[b] Sauron, the Dark Lord who in an earlier age created the One Ring to rule the other Rings of Power given to Men, Dwarves, and Elves, in his campaign to conquer all of Middle-earth. From homely beginnings in the Shire, a hobbit land reminiscent of the English countryside, the story ranges across Middle-earth, following the quest to destroy the One Ring, seen mainly through the eyes of the hobbits Frodo, Sam, Merry, and Pippin. Aiding Frodo are the Wizard Gandalf, the Men Aragorn and Boromir, the Elf Legolas, and the Dwarf Gimli, who unite in order to rally the Free Peoples of Middle-earth against Sauron\'s armies and give Frodo a chance to destroy the One Ring in the fire of Mount Doom. ','J. R. R. Tolkien',1954,'High Fantasy, Adventure'),(10,'The Two Towers','The Two Towers is the second volume of J. R. R. Tolkien\'s high fantasy novel The Lord of the Rings. It is preceded by The Fellowship of the Ring and followed by The Return of the King. The volume\'s title is ambiguous, as five towers are named in the narrative, and Tolkien himself gave conflicting identifications of the two towers. The narrative is interlaced, allowing Tolkien to build in suspense and surprise. The volume was largely welcomed by critics, who found it exciting and compelling, combining epic narrative with heroic romance. ','J. R. R. Tolkien',1954,'High Fantasy, Adventure'),(11,'The Return of the King','he Return of the King is the third and final volume of J. R. R. Tolkien\'s The Lord of the Rings, following The Fellowship of the Ring and The Two Towers. It was published in 1955. The story begins in the kingdom of Gondor, which is soon to be attacked by the Dark Lord Sauron. ','J. R. R. Tolkien',1955,'High Fantasy, Adventure'),(12,'The Hellbound Heart','he Hellbound Heart is a horror novella by Clive Barker, first published in November 1986 by Dark Harvest in the third volume of its Night Visions anthology series.[1] The story features a hedonist criminal acquiring a mystical puzzle box, the LeMarchand Configuration, which can be used to summon the Cenobites, demonic beings who do not distinguish between pain and pleasure. He escapes the Cenobites and, with help, resorts to murder to restore himself to full life. Later on, the puzzle box is found by another. ','Clive Barker',1986,'Horror, Gothic fiction'),(13,'Mister B. Gone','A narrator attempts to convince the reader to burn the book they are currently reading, but eventually reluctantly agrees to tell his story, and introduces himself as a lesser demon named Jakabok Botch, who lived a traumatised childhood in Hell, especially due to his brutish, physically abusive demon of a father. To prevent himself from losing his mind, Jakabok decides to write violent, hate-filled papers in which he commits torture and patricide. ','Clive Barker',2007,'Horror'),(14,'The Scarlet Gospels','The Scarlet Gospels is a 2015 horror novel by author Clive Barker which acts as a continuation to both his previous novella The Hellbound Heart (which introduced his popular Cenobite characters that then starred in the Hellraiser franchise) and his canon of Harry D\'Amour stories. The book concerns the Hell Priest, the demonic Cenobite nicknamed \"Pinhead\", and his efforts to gain power. Occult detective Harry D\'Amour must journey into Hell to rescue his friend and stop the Hell Priest\'s plans. The book was the first in which the Hell Priest was officially given a name by Clive Barker, who disliked the nickname \'Pinhead\' given his character by others.','Clive Barker',2015,'Horror, Gothic fiction');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 23:23:43
