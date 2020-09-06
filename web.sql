-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 04 Σεπ 2020 στις 18:15:24
-- Έκδοση διακομιστή: 10.4.14-MariaDB
-- Έκδοση PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `web`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `status` enum('user','admin','','') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `status`) VALUES
(1, 'steliosqq@gmail.com', 'asdasd', 'Asda@1asd', 'user');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user_data`
--

CREATE TABLE `user_data` (
  `Uid` int(100) NOT NULL,
  `datata1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`datata1`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `user_data`
--

INSERT INTO `user_data` (`Uid`, `datata1`) VALUES
(1, '{\r\n  \"locations\" : [ {\r\n    \"timestampMs\" : \"1470420945250\",\r\n    \"latitudeE7\" : 378946983,\r\n    \"longitudeE7\" : 237214554,\r\n    \"accuracy\" : 36,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470420945276\",\r\n      \"activity\" : 10}]}]}'),
(2, '{\r\n  \"locations\" : {\r\n    \"timestampMs\" : \"1470420945250\",\r\n    \"latitudeE7\" : 378946983,\r\n    \"longitudeE7\" : 237214554,\r\n    \"accuracy\" : 36,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470420945276\",\r\n      \"activity\" : 10}]}\r\n}'),
(3, '{\r\n  \"locations\" : [ {\r\n    \"timestampMs\" : \"1470420945250\",\r\n    \"latitudeE7\" : 378946983,\r\n    \"longitudeE7\" : 237214554,\r\n    \"accuracy\" : 36,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470420945276\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 97\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 3\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470329542479\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    } ]\r\n  }, {\r\n    \"timestampMs\" : \"1470420974000\",\r\n    \"latitudeE7\" : 378957774,\r\n    \"longitudeE7\" : 237210906,\r\n    \"accuracy\" : 8,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470420973475\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    } ]\r\n  }, {\r\n    \"timestampMs\" : \"1470420989000\",\r\n    \"latitudeE7\" : 378971015,\r\n    \"longitudeE7\" : 237207432,\r\n    \"accuracy\" : 16,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470421073397\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470421001674\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 80\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 10\r\n      }, {\r\n        \"type\" : \"ON_BICYCLE\",\r\n        \"confidence\" : 8\r\n      }, {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 3\r\n      } ]\r\n    } ]\r\n  }, {\r\n    \"timestampMs\" : \"1470421160669\",\r\n    \"latitudeE7\" : 379096078,\r\n    \"longitudeE7\" : 237136960,\r\n    \"accuracy\" : 67,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470421145120\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 44\r\n      }, {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 39\r\n      }, {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 14\r\n      }, {\r\n        \"type\" : \"ON_FOOT\",\r\n        \"confidence\" : 4\r\n      }, {\r\n        \"type\" : \"WALKING\",\r\n        \"confidence\" : 4\r\n      } ]\r\n    } ]\r\n  }, {\r\n    \"timestampMs\" : \"1470421188712\",\r\n    \"latitudeE7\" : 379104269,\r\n    \"longitudeE7\" : 237120992,\r\n    \"accuracy\" : 64\r\n  }, {\r\n    \"timestampMs\" : \"1470421203999\",\r\n    \"latitudeE7\" : 379104324,\r\n    \"longitudeE7\" : 237119529,\r\n    \"accuracy\" : 12\r\n  }, {\r\n    \"timestampMs\" : \"1470421220999\",\r\n    \"latitudeE7\" : 379104619,\r\n    \"longitudeE7\" : 237118618,\r\n    \"accuracy\" : 12\r\n  }, {\r\n    \"timestampMs\" : \"1470421236999\",\r\n    \"latitudeE7\" : 379109081,\r\n    \"longitudeE7\" : 237112460,\r\n    \"accuracy\" : 8,\r\n    \"activity\" : [ {\r\n      \"timestampMs\" : \"1470462992132\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 56\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 27\r\n      }, {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 13\r\n      }, {\r\n        \"type\" : \"ON_FOOT\",\r\n        \"confidence\" : 4\r\n      }, {\r\n        \"type\" : \"WALKING\",\r\n        \"confidence\" : 4\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462858130\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462724127\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462595218\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462466308\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 73\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 27\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462333380\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462200451\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"ON_FOOT\",\r\n        \"confidence\" : 58\r\n      }, {\r\n        \"type\" : \"WALKING\",\r\n        \"confidence\" : 56\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 15\r\n      }, {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 13\r\n      }, {\r\n        \"type\" : \"ON_BICYCLE\",\r\n        \"confidence\" : 8\r\n      }, {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 6\r\n      }, {\r\n        \"type\" : \"RUNNING\",\r\n        \"confidence\" : 2\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462151056\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470462101661\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 66\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 35\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470456720658\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470456481708\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470456218181\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470456089352\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470455960522\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 38\r\n      }, {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 29\r\n      }, {\r\n        \"type\" : \"ON_FOOT\",\r\n        \"confidence\" : 21\r\n      }, {\r\n        \"type\" : \"WALKING\",\r\n        \"confidence\" : 21\r\n      }, {\r\n        \"type\" : \"ON_BICYCLE\",\r\n        \"confidence\" : 6\r\n      }, {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 6\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470435572122\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 77\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 23\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470435296474\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 60\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 26\r\n      }, {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 9\r\n      }, {\r\n        \"type\" : \"ON_FOOT\",\r\n        \"confidence\" : 5\r\n      }, {\r\n        \"type\" : \"WALKING\",\r\n        \"confidence\" : 5\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470435191023\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"TILTING\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470435085572\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 100\r\n      } ]\r\n    }, {\r\n      \"timestampMs\" : \"1470434829585\",\r\n      \"activity\" : [ {\r\n        \"type\" : \"STILL\",\r\n        \"confidence\" : 81\r\n      }, {\r\n        \"type\" : \"UNKNOWN\",\r\n        \"confidence\" : 17\r\n      }, {\r\n        \"type\" : \"IN_VEHICLE\",\r\n        \"confidence\" : 2\r\n      } ]\r\n    }]}]}');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
