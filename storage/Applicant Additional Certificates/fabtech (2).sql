-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 02:43 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fabtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesstoken`
--

CREATE TABLE `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesstoken`
--

INSERT INTO `accesstoken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('07YWldELhbV432LKxeaspM7EkCV4uxxI4JvuwMdWVt6QVufa1YaBci5HdbYMRpfU', 1209600, NULL, '2019-12-02 08:04:49', 3),
('0doJ1SNwyPtj7xogYvuaPEagkKHvFRzLKt0krMQoJoZfZgELSNQK904Px8ZIyDjd', 1209600, NULL, '2019-12-06 13:09:15', 3),
('0wNXeZqLI1G885Feb9Ty764hcGbipHpZOBcgIeUoJT3IB8auAt8d5FNf7yHySbQT', 1209600, NULL, '2019-11-25 08:15:25', 20),
('0Y1bs9f4AI8v5hzx9fk25UCWuPOaCtzpHufYKsVMuczSuvMlHzm0mwXSyvw4Ttdw', 1209600, NULL, '2019-12-01 04:31:40', 1),
('1Yhad1fMwpDESQaWECjHpuPNnSZOBntsWpERvEvmVxlCZPeEbyDq0tFhbDZ2oEXH', 1209600, NULL, '2019-12-09 06:24:51', 3),
('2kgdsGcAOmzE7tStsEn3NBGPq2TtHXh21wYjZPUcOsumecXeGlwtObF9RbrxaXtU', 1209600, NULL, '2019-12-14 22:52:46', 2),
('2q0sa3hLJlZ352cGUjFc3JccQFK8ec5hpqYZ55GbJ6PKsKjhowF6GgQiOGOmiqCM', 1209600, NULL, '2019-12-15 08:41:02', 1),
('520GBGVIxL9aclplySmoveDSoULicFNnHKUgWZMSDmH2HjIETDNMGDclwy3qx3D6', 1209600, NULL, '2019-12-11 00:51:58', 1),
('6gef8xO0fN7DFvqhpkoi6lFodrQvFptekK3KjBMgsobqJ4xuPVGLdV3BfkEkb6cc', 1209600, NULL, '2019-11-19 15:05:24', 3),
('6hnPImxvllTbfu2ONB7zwCX4nCYP0XilNenLjqims0V37pmhMDmQaSRHq03lKwx3', 1209600, NULL, '2019-11-26 01:35:18', 30),
('7CfsdeKE5Abx7kSdaWkzqrYTrVwv8OKw1trejKKTZF21AussKLlHOxQunVCfckqA', 1209600, NULL, '2019-12-08 01:26:25', 2),
('7kWluV0TU69fx0Q4dwHTWzRsGZ0Wj2OuDgp8UZC8Iv1EA6CVLq2mn2IXfH31czxo', 1209600, NULL, '2019-11-29 07:56:39', 3),
('8bU5BxYtTlKWnlgLBmeIW3fxp46axBvEzqrbnRz5lCHFUKYZ8OYeGSq99CIoVC0N', 1209600, NULL, '2019-12-19 03:56:45', 2),
('8QNhXgTU1fZSPEA8h53mNZKyF47L5xljiZZNghds8cO0SOnQfWrODBUcZHFb21aw', 1209600, NULL, '2019-12-10 14:14:15', 3),
('9FrZ7bSEltER1z6PnFRjvjbq19uCuE8nN9Rr853J7B3EPvJ8GkQf4B9Yr87Bz6kU', 1209600, NULL, '2019-12-11 14:26:20', 3),
('9jKsRt9vUwaMuzdWB4cWgd6EoWIj5dAmXBl3JYV07bfG93dTCHod6EKMMwtmVRL1', 1209600, NULL, '2019-12-15 01:40:03', 2),
('a1kWkTj2gjRqwaNfs3aY1Q4PjTNBISgYdGuMCYgZ8W6Yu9BGev2V0Ld0imIDoPkj', 1209600, NULL, '2019-11-28 04:26:08', 3),
('ACyE1V6DByAZO6wtYMYitCFiHTETHgVbsvUty3BgBmReek80k4ImHz87Hu4LmGYa', 1209600, NULL, '2019-12-10 14:14:27', 2),
('aP3Wd8y8945p0xQdW7w5s4oVWIL7AMYGEFtUuE6uEBR0umzxqxcXqtJfCNk14tm9', 1209600, NULL, '2019-12-04 07:30:35', 3),
('aql5fnw6CfEXsDY2LXLboGGHV0JnRhan7aCUEfykZ82sqh0FvANj6t8corJttNUz', 1209600, NULL, '2019-12-11 14:26:12', 1),
('ArFDyLSwOGJ5h7X2VmOonOJqVEyIhnZH7mzafmz4jG7y2QGy447yxWvPRgCdbEPW', 1209600, NULL, '2019-11-13 15:01:49', 1),
('aUX2lJ2V6b66JEKPPDuaXNcE8XQ17F5WHnF0v1NDhhzFylpbba7Q1I1BpMx62kbb', 1209600, NULL, '2019-11-20 02:43:16', 1),
('BDFTraHm9NX5eEmIQO3wNKbCNQoNzMAyaa4wflgB5bmND5LwECFjQ5i17LNtCtPh', 1209600, NULL, '2019-12-09 08:19:02', 35),
('CecdAHcNU2KNbjPrjr1pOB5hOD8IUbkgL3peLTVuOhVrTdunE16oVyT066uAt486', 1209600, NULL, '2019-12-18 00:59:41', 2),
('cIHR6j2QkAuythj9NRsm2UksyQsBR1I4e6PNG5QPcONxBf9XXGTf5OatyursK8u1', 1209600, NULL, '2019-11-20 15:52:10', 3),
('CjVV4gasO7WrvPXJEoGn6xkCOW8BCc3j5dhgv4W8dQLEifqtuTknobdBl4chD7Tt', 1209600, NULL, '2019-12-14 04:15:42', 3),
('CMBSIywAV5UTHmkuAfHG1e5eSM9MCctHoAkBXfxxn50Nz1RfBhR8bxqidKrSvD8s', 1209600, NULL, '2019-11-24 08:22:08', 1),
('CnFZszlaUzKm0UpgbDvTm8G9BUj6QBl6JMD1L5p0fLqxgQYHzuICxTJt4Gb0zCiA', 1209600, NULL, '2019-11-20 01:02:15', 3),
('CNy8tYOJb2ukFURPuOwPA4AfdREQCsKHHgWk69Ies43EtfLZKGykhNZcMpZDIKex', 1209600, NULL, '2019-12-08 05:55:50', 1),
('cUOecY4rnfIVpaxvMrEqB6aZb9Hk4uAAaCyX5UUkSDJmyGAcmwQJKGHuS56uke5j', 1209600, NULL, '2019-12-10 05:47:36', 30),
('DG050Ufj5goiJZbJ1CF8qpaDFRbWw6u5PJvjx94nrERNv7rD7Cae6hsZZs2otQQm', 1209600, NULL, '2019-12-17 01:00:07', 1),
('dHKBNTEy00axI8pE84zxBW2bHdjxR5zpsremM28DsCHy0WNpbnLfHniEcvQWmrE1', 1209600, NULL, '2019-11-24 09:52:36', 3),
('DPWJBh8FPMR4f1qW41lBlRN0ZHoN5F5MUA5xvgKcMC6iR7uCc7lEu6tx0mZKOnEa', 1209600, NULL, '2019-12-09 08:42:09', 2),
('DvUf6uPBx6uA5JB54uZxFeypuHnIUZGUf5mRWj9uaaIKnGhJiIswdkds4H7DtkkG', 1209600, NULL, '2019-12-11 00:52:07', 2),
('Dw10xZRjqzqdiFZ8h3DFciQNgUKVRBAL028NvViDF18bhrz24lCs0KCBboSrV6xk', 1209600, NULL, '2019-11-21 07:40:49', 1),
('e0pgKoFSZQNoArrEgLyVY3Ls55IXOsTOhLTOIi71qBaTV1y1CTfkYvSPSZCu1sPj', 1209600, NULL, '2019-11-13 07:47:56', 1),
('e20EVVQi0cWLzrbGgVhtVnQXlIEUvKkQdN5qziYjfIFjNwWz41p14xLG4MiZkWGw', 1209600, NULL, '2019-11-17 09:21:27', 1),
('EaSYeLU2JFa2IqBG6nhd4zQHOCw6hdCG4AjaJhLryuWK3Y6zm1noyeLnn2R3DjBc', 1209600, NULL, '2019-11-13 00:44:05', 1),
('eBq8k1OvgKhTeiVYSwot2DtIQlJUOQqQb2CywA6zfjzEepooqzBaxdCJvk9k7JGA', 1209600, NULL, '2019-12-11 00:52:01', 3),
('EdoFA0B1rUXUTt8NBId0UaO2QdzKfZyjf2kjawV7Ci1DIdPl3EU36SPErGyTGxAk', 1209600, NULL, '2019-12-02 04:55:49', 40),
('eWcLnPPr36NIIFbSWpYAOI9Pl5VwSo7TOgmwdn99vjzj6cGRSt6ucJU7sHuFSEZC', 1209600, NULL, '2019-11-28 09:07:16', 3),
('f53U2Nye68U6VScKFCcoc4nAsyLxn2u3Mg0bs8lMtqSyRaKRpSnPqkgxspUd4Iwf', 1209600, NULL, '2019-11-28 05:38:26', 1),
('G7QES5CZg4xKSX2K9aOdfGnxCZxqCttDncD7ZxDOhICACjtWCQjwzokSjYNyEcRM', 1209600, NULL, '2019-11-25 08:25:25', 22),
('GbPOcmj38Au7B9mQSS7x7O4NffEh59MU5SkU4zQ8vinkimpZH7JESRHutOrQJJqz', 1209600, NULL, '2019-12-17 01:00:17', 2),
('gSVlKC3Z8hxfzzNHYT1jxuPvrCGVkGM1pk8u9bMRHYGWb2TEPEhT5xVQijjauFZR', 1209600, NULL, '2019-11-28 05:09:23', 1),
('GYtdXnShGL4NHOPqV4dzernnxXoe63lQPCmaalqYKDaScmOrGV6C66ERy73EdmHv', 1209600, NULL, '2019-11-15 00:59:31', 1),
('HAzIW7B24F8RdIOxkfQc0A01TxkD8U2wXN8DDeEwx3fsDWljfceGaG8zs5zeVv4E', 1209600, NULL, '2019-11-25 08:18:46', 21),
('HPFZoq8fQMrsYRr8nht7DMJ2jhD6mxWIEzXdVBRCCFlfKVEFrNSS6OaAYyGjtLR5', 1209600, NULL, '2019-12-15 01:39:58', 3),
('HrIRbfI5PcHufLwmNy3WYsnujyNPhuRh2SnK2ZX9HFZsZ24GMYPERUDxqgI1d56m', 1209600, NULL, '2019-12-14 04:15:48', 2),
('I0ZAOtF6dBZ4lPCN8llRrqXOfMYU0TNBm05S37XCVLKXJ4ESEPGlvEv0HmhjnHgw', 1209600, NULL, '2019-12-08 05:56:06', 2),
('I17SHOA8CCBZuz9b7GOAnajgM6fNTOnFAFSz6DBBg5HnUIYBSAvWGjT1xpCVAU1M', 1209600, NULL, '2019-12-18 00:59:47', 1),
('IEhP3VCBkzChOShEqlC0hobz4UqyIGyR2GkjYSuZoEJx86wNKKTwjOuhbBotm8hl', 1209600, NULL, '2019-12-05 07:00:55', 3),
('iQ0a1g5W0kmXAG8aQcwwhtxZAYZd1BdCGj0kKdwgomaX2O9TV6E8Ra8d0QEbkKf1', 1209600, NULL, '2019-11-29 14:31:01', 3),
('iQxoSyoES2FVsaeIzEKzdVi6FMS1AQ70a1TpgRJnOR6skABc0aFaGTSIDGPMct0U', 1209600, NULL, '2019-11-13 01:44:28', 1),
('jGucTlcz7A1SEkzi6hFAvfANqSX2A0E6Kqai2aC3zPRq8nKsSMmj7RGFgzqCupon', 1209600, NULL, '2019-12-10 14:13:55', 1),
('jMKuMq9Yd6OkIgCkmbx9hHpVBlG4jHEYbGGi6tNCxOsgDI8zkT2jhhqyyIqxfuEq', 1209600, NULL, '2019-11-17 15:59:02', 1),
('K9tXzsnpEVBTwyW0uAUNWogNH3ccd5ue8TRiIkGM8QCHWU2pT7Xha9AG9PclNh6I', 1209600, NULL, '2019-12-07 04:15:06', 2),
('Kqk5KHKFD6u8W9COfeYgu8Mxr3AWcLwiY9Y9fHj74ELS2bpHDwelGJF5huze4cld', 1209600, NULL, '2019-11-20 01:02:12', 3),
('KZe9C1spVlD2fSkaT1UGtLEKovwMrFnjmJcC1dH2p296z3ul6aJd9Pkpr4DfSNYd', 1209600, NULL, '2019-11-21 09:05:08', 3),
('L0ZObL7YaFq0eJOcKEcQGT8hIfdc15Clm04zX2KzrP3SfcM14WPEKIoElaGI67dK', 1209600, NULL, '2019-11-28 04:13:57', 32),
('lCWnk7GEYT4NMuXvG7YaeuB1MvQtJqQvr951mNqFfrftTC64IGJJkGOYZL30rWaE', 1209600, NULL, '2019-11-25 08:02:19', 19),
('Lr5Ha50f6eZrDcP5HKA43zs8PEoqAiCy34dsGGT71GS6OOeZ6DuS6hn69pmHd2Xv', 1209600, NULL, '2019-12-03 01:09:02', 3),
('MolHtAU0vLl7HD4tfLHXqiiTCmrL6nV08H54CgDm7sJDOeH4qqW0ylk0xnJ9qxCK', 1209600, NULL, '2019-12-10 00:37:32', 2),
('mTVWgKdgL3u2gybVvysIuh71YLvWCwThXARi8bcApOrBnWUNCVwUVksZgM76lvbM', 1209600, NULL, '2019-11-29 14:30:51', 1),
('mZfus7MgFRF6hm8XbvhjDG2Diqb0jgbHurwyNMWzysjHAyeZ57pskQifn6PzQk7h', 1209600, NULL, '2019-11-25 07:47:25', 21),
('NAhpUfDHlOGJlucMz7q0oCyr0HjQ9aYUoDCBIZEbeUfDC68zb5Hv106g5BVRdEVS', 1209600, NULL, '2019-12-14 22:52:28', 1),
('NaZbSMTWVvyjCtBRC4NzhZxEZGg48IAENMcKddD8zeEjR0faQNC10AYUG8DjMWP8', 1209600, NULL, '2019-11-28 05:27:10', 1),
('NHqOsLZWo74P4mLKxAQVjNSol6vxcmcxTkHPTg74PpAIJnPmBJNdQfNm7sJs7iFR', 1209600, NULL, '2019-11-25 07:10:19', 3),
('nmIV4d57USGphnKfxHLAimiyiSvzrOovAckhALwJyA1QmM3AFbvzKqp9WxVe2IAr', 1209600, NULL, '2019-12-05 06:53:48', 1),
('NohAOWimHCAaVnfaAw1AGK3eogCfwQHEzOIaJA9nF9VxqENmDoh2LHavcweVg3Ef', 1209600, NULL, '2019-12-05 07:00:55', 3),
('nS00uHppxmGwd2orpZwD8BhL7QrQPkqGDDERXU0BIR8EGiA0cX46Tt7F7rHBLwel', 1209600, NULL, '2019-12-01 01:46:25', 3),
('O3qIC3liM0LdY2MhCVfautt8S1GkYJlACJX9HN51BGycHntAV91su8687Uh2BAS3', 1209600, NULL, '2019-12-18 00:59:45', 3),
('oADWCxcRBMSngFRSFKXoFXg5i05XFbR1X5R5oerwgiHCn5tkSRaVxmLDqopac5xR', 1209600, NULL, '2019-11-30 04:17:12', 1),
('OCPnpiDuG4ylD1TtHI2bUzwVGaLxVWmMFt41VRGik8HvGlsKAApxGWlRgzZhSjon', 1209600, NULL, '2019-11-25 08:27:06', 3),
('OFx2dPSnhSXDAqbP5ukS5vjoyfQTvUZuPaOWSOUTrl7WHHrPu8PbFYeJndFrdxQw', 1209600, NULL, '2019-12-14 22:52:36', 3),
('OQBul9ZDIejEKHZjgCmHTyDLGqeFpKHFzYCCVACb9oSqNwDY8yvA9dCOUNXlrOvc', 1209600, NULL, '2019-12-17 01:00:12', 3),
('psae4kzn0tRDJ1hZgW9pjpGBZJKDxFvFKL4qvPjZiifBa1BjYNhSDVVZiycJeQap', 1209600, NULL, '2019-11-28 03:48:57', 1),
('PsJBfJDv3irRlh6F2ifQ7dkIW7FdS7CHgdRVkHsFS8ZUCqGrhUR05hOW4xuBGfHi', 1209600, NULL, '2019-12-06 13:10:23', 1),
('Qe2ilCgaBGjzxcCHllzdld0EqzpayeY39sFvgY2xGXY18MeqkXsEqwaPXhXC1EFI', 1209600, NULL, '2019-12-14 04:25:01', 1),
('QZPJ2lgOtE4E6MEOLLcGUHGDYzgJrao4pJO9ECe3eto08R6wPWUo0RFyewz90OhZ', 1209600, NULL, '2019-11-28 07:42:09', 35),
('R70Sq6CQyVAEMMKAXcdlXEGnaEQ9ICSlQ5xKX6j62JhuxUgCCyRtMVsParA7mzWL', 1209600, NULL, '2019-12-01 00:46:32', 3),
('rAs9UN7Ard0X3tfuF0KjNckPJCmqSmXyBLq9D67eraMpBRXTe2xBkrgT7gWlVgYz', 1209600, NULL, '2019-12-02 05:06:39', 40),
('rENdIokrYtLnOUL66eV7RVORBIJN0ANNeOzbLKjD3BW2gSXgVib8HxPUbvzs6RxM', 1209600, NULL, '2019-12-19 03:56:35', 3),
('RfDMVt1XQnqBLpoEcEIPL2Hthp7JOJo6m1s8wLvts6OR6k2CtjyAGtLb3GY5BSAi', 1209600, NULL, '2019-11-28 06:51:36', 3),
('rjbzFzfryFJmEprFCz3vkckQzFr5K0IN59g4n8ymODvt1S3GZ2HPKVkpxf86dCNs', 1209600, NULL, '2019-12-01 00:52:07', 3),
('soTA1JzuNxs1ULEvRCuLMXPHGGagYteF9FSO1qefZf2fOVQXHvpbZ3pCt5yUEoDQ', 1209600, NULL, '2019-12-16 01:00:20', 3),
('T2m18yx5DfBymsTdRz1KZGjm6GZvHNX5Oc0myCLUViO3XktqSoJFON8fGkFFj9DL', 1209600, NULL, '2019-11-25 07:49:32', 21),
('tQ32cBaYScNXE90uYTcyQGYl57kMwZbXA541UOscrU1WHoXujoSxnRBfaLXvYBqF', 1209600, NULL, '2019-12-08 05:56:01', 3),
('uL9wRR4Jqga5CPE9RdM39Zf1XGAJUUxVsFx5JoZSx4XVr4Apls1KsLFighJ0rjgp', 1209600, NULL, '2019-12-16 01:00:04', 2),
('Ur6p7knj2T1O1FnqGqL4X051y7BZQHsFRpf8SQNKyANNO7UaKYp4DPfjId1C8xhr', 1209600, NULL, '2019-11-23 10:04:58', 3),
('VaW90O9N5fx5gHlvlgyYEDvBKHULVQW6LHevRonYXwaC1c5XUa2hC2xKLdv0xr1r', 1209600, NULL, '2019-12-12 08:33:08', 65),
('VbtEOM05FYJRGSC53BtDMQ7e5W11vpsVHbuzFs24vv2LdULJsqC2ZM4Z75g7uO7D', 1209600, NULL, '2019-11-28 04:09:22', 1),
('VruccIGgZHhzxAH1HsWOU2KSIbE2eDk3BSaSEhP0Yljul1SnkFZwlFjyf2ib0uRC', 1209600, NULL, '2019-11-18 01:28:40', 1),
('W03ZaQeIBtEBsIe5uxfEnC5Aw3oPmUvyYcefEPFR6woX4DeXNQSJfxLakW7sq16s', 1209600, NULL, '2019-11-21 07:35:50', 3),
('w2I7z8bdXn1eZ8eWF62kZyBB17SbcPVwtWskIQ0i00oE7XNnQrc0ON0jjoguAMXy', 1209600, NULL, '2019-11-25 08:26:41', 21),
('wFzsvheambGbIv5PQjBabgknGzrqwWhdgJ4PGsiWCdCMJxgKQz5Y68Ac1q4Er7lv', 1209600, NULL, '2019-11-28 01:21:20', 3),
('WHSRH8aR5FNAYNMduLTmGNkRTv2EWwVYb9V7CTbJLi2RpCYKEDFg7Gai24cqAM6v', 1209600, NULL, '2019-11-26 16:05:02', 3),
('WvLLOFVBLvusmdXnDIrAbeoDAjmKEv7MApJEMLeQ0YsoKKBO49tyZ4D0boXHk3Cf', 1209600, NULL, '2019-12-10 00:37:28', 3),
('xLlgnn4ViGdi4FePY5jU4UXAOI4QPbGPc3CafT5Hqhrwl0AMMZVp1fsLFhePAX1J', 1209600, NULL, '2019-12-01 03:13:55', 35),
('Xn1oRlmdlTo8ZB06fLeKPYReGVCB87uzpZ9959StG8L5oCCZE13eydg34QVBuVGd', 1209600, NULL, '2019-11-14 04:37:51', 7),
('xqL1AYo36e13Hmq0WsoApq2UCCBrGyIaYbIbiOgQ70OQs6se35hQ5B5ePNVa5B13', 1209600, NULL, '2019-11-14 01:40:41', 1),
('YlCoxgO9JMnDQhgIGGJ10ocGxCka93D7EfAeQ55glWOHKoJ5do4HFrimK5LRPEBP', 1209600, NULL, '2019-12-07 04:06:57', 3),
('YNQsiN5GTzQSgfzRqBkiDOyT27GlXl6cm7tvC3Dhkve8SMB0OfRdYvCAyqHiVxLb', 1209600, NULL, '2019-12-08 01:26:22', 3),
('yyD4DjxaJMhYejBBwCbaVqA5GB3iOdFY9QYQpOthcKECX5d5TtkHPvPAWHaVBZJt', 1209600, NULL, '2019-11-24 04:22:33', 1),
('z7MJU8MRuOlF0lBmUIznk3CZhCn7tRk1MlHNuWHByeB1F9Z2YGkxW9tNg3xpmdFI', 1209600, NULL, '2019-11-13 01:53:37', 1),
('zHi4SjWDkaiFbE4FIvdDaMFjJBdCqE2Qts7ahuce149OJtzsak4BenNGnGhGG9Wn', 1209600, NULL, '2019-12-19 03:56:23', 1),
('ZVvDXYnh11c2HPUaSAj2SDXREr5NytHvG4ipiGXiAUFXWPGNxYi2or8ULdAxMdqA', 1209600, NULL, '2019-11-16 06:05:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `id` int(11) NOT NULL,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `icno` varchar(50) DEFAULT NULL,
  `passportno` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `street1` varchar(100) DEFAULT NULL,
  `street2` varchar(100) DEFAULT NULL,
  `street3` varchar(100) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(50) DEFAULT NULL,
  `attachment_ic` varchar(50) DEFAULT NULL,
  `attachment_passport` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `attachment_education` varchar(50) DEFAULT NULL,
  `attachment_resumecv` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `name`, `icno`, `passportno`, `nationality`, `street1`, `street2`, `street3`, `postcode`, `city`, `state`, `country`, `dob`, `profile_pic`, `attachment_ic`, `attachment_passport`, `education`, `attachment_education`, `attachment_resumecv`, `user_id`, `phone_no`, `age`) VALUES
(2, 'Muhammad Izzad Rasyidi', '961112015139', 'test12345', 'Malaysian', '1116, ', 'Jalan Kelicap,', 'Felda Ulu Penggeli,', '86007', 'Kluang', 'Johor', 'Malaysia', '1996-11-12', 'IMG.JPG', 'Axy0ts.jpg', 'Accept job confirmation.png', 'Degree', 'dafault.png', 'CIMB_ACC_Izzad.JPG', 1, '0123456789', '23'),
(10, 'Adam Mikail bin Zainal', '750203015335', '-', 'Malaysian', '12, ', 'Taman Kebun Lama', '', '81000', 'Johor Bahru', NULL, 'Malaysia', '1975-02-03', 'jDU-APZZ_400x400.jpg', 'dafault.png', NULL, 'Degree', NULL, 'Senate_Letter_Izzad.pdf', 30, NULL, NULL),
(13, 'A B M FAHIMUL AL ZILANI', '123456789', 'A12121', 'Malaysia', 'Room no 506, block s47, Kolej tuanku canselori (KTC), Universiti Teknologi Malaysia (UTM),', '81310 Skudai, Johor Bahru', '', '81310', 'Johor Bahru', NULL, 'Johor', '2019-11-29', '74fb6dacc9f7ad4f39c7465141f06a9c.jpg', '', '', 'Degree', '', '', 32, NULL, NULL),
(14, 'Mohamad Asyraf bin Ramli', '213123123', 'asdwqrqwdf', 'maklausias', 'no 11,uwjjsnvojn', '', '', '81300', 'johor', NULL, 'malaysia', '', '0.jpg', 'barrier_open.png', 'LOGO-UTM.png', 'degree', '5dcd8d19-d17e-4df7-ac07-e23d076a0f2b.jpg', 'main-dashboard.png', 35, NULL, NULL),
(15, 'Deen', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 64, NULL, NULL),
(16, 'Redza', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', 65, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicantapplication`
--

CREATE TABLE `applicantapplication` (
  `id` int(11) NOT NULL,
  `application_datetime` text,
  `application_type` varchar(512) DEFAULT NULL,
  `application_status` varchar(512) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `job_available_id` int(11) DEFAULT NULL,
  `isHide` tinyint(1) DEFAULT NULL,
  `isAssign` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicantapplication`
--

INSERT INTO `applicantapplication` (`id`, `application_datetime`, `application_type`, `application_status`, `applicant_id`, `job_available_id`, `isHide`, `isAssign`) VALUES
(23, '2019-12-15 16:39:57', 'Self-apply', 'Accepted', 2, 17, 0, 0),
(25, '2019-12-15 16:40:51', 'Self-apply', 'Accepted', 10, 18, 0, 1),
(26, '2019-12-17 9:2:48', 'Self-apply', 'Rejected', 2, 18, 0, NULL),
(30, '2019-12-17 15:49:29', 'Invitation', 'Accepted', 2, 19, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicantcertificates`
--

CREATE TABLE `applicantcertificates` (
  `id` int(11) NOT NULL,
  `types` varchar(512) DEFAULT NULL,
  `expired` varchar(512) DEFAULT NULL,
  `levels` varchar(512) DEFAULT NULL,
  `clevel` varchar(512) DEFAULT NULL,
  `welding` varchar(512) DEFAULT NULL,
  `attachment_certificate` varchar(512) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicantcertificates`
--

INSERT INTO `applicantcertificates` (`id`, `types`, `expired`, `levels`, `clevel`, `welding`, `attachment_certificate`, `experience`, `applicant_id`) VALUES
(133, 'AESP Card', '2019-11-12', '', '', '', 'jobs available(popup).png', 6, 14),
(136, 'OGSP Card', '2019-12-23', '', '', '', 'download.jpg', 1, 14),
(208, 'T-BOISIET', '2019-12-17', '', '', '', 'profile.png', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `applicanttrades`
--

CREATE TABLE `applicanttrades` (
  `id` int(11) NOT NULL,
  `trade_name` varchar(512) DEFAULT NULL,
  `applicant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicanttrades`
--

INSERT INTO `applicanttrades` (`id`, `trade_name`, `applicant_id`) VALUES
(81, 'Welder', 10),
(82, 'QA/QC', 10),
(86, 'Driver', 13),
(87, 'Pipe Fitter', 13),
(88, 'Helper', 13),
(102, 'Welder', 14),
(103, 'Electrician', 14),
(104, 'Instrument Technician', 14),
(107, 'Helper', 2),
(108, 'Blaster Painter', 2),
(109, 'GRE Bonder', 2);

-- --------------------------------------------------------

--
-- Table structure for table `broadcastmessage`
--

CREATE TABLE `broadcastmessage` (
  `id` int(11) NOT NULL,
  `broadcast_message_content` varchar(512) NOT NULL,
  `broadcast_message_datetime` varchar(512) NOT NULL,
  `fa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment_content` varchar(512) DEFAULT NULL,
  `comment_datetime` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment_content`, `comment_datetime`, `user_id`, `post_id`) VALUES
(1, 'test OD comments', '2019-12-19 11:23:14', 2, 1),
(3, 'test', '2019-12-19 11:27:30', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dailylogreport`
--

CREATE TABLE `dailylogreport` (
  `id` int(11) NOT NULL,
  `subcontractor_name` varchar(512) NOT NULL,
  `equipments` varchar(512) NOT NULL,
  `materials` varchar(512) NOT NULL,
  `dlr_attachment` varchar(512) NOT NULL,
  `crew_name` varchar(512) NOT NULL,
  `report_datetime` datetime NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailytimesheet`
--

CREATE TABLE `dailytimesheet` (
  `id` int(11) NOT NULL,
  `dt_id` varchar(512) NOT NULL,
  `worker_id` varchar(512) NOT NULL,
  `dt_datetime` datetime NOT NULL,
  `attendance` varchar(512) NOT NULL,
  `sv_eng_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailytimesheetdetails`
--

CREATE TABLE `dailytimesheetdetails` (
  `id` int(11) NOT NULL,
  `time_in` varchar(512) NOT NULL,
  `time_out` varchar(512) NOT NULL,
  `hours_left` varchar(512) NOT NULL,
  `dtd_attachment` varchar(512) NOT NULL,
  `sv_verified` varchar(512) NOT NULL,
  `client_rep_verified` varchar(512) NOT NULL,
  `dt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fabtechadmin`
--

CREATE TABLE `fabtechadmin` (
  `id` int(11) NOT NULL,
  `fa_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fbuser`
--

CREATE TABLE `fbuser` (
  `id` int(11) NOT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fbuser`
--

INSERT INTO `fbuser` (`id`, `username`, `password`, `email`, `realm`, `emailVerified`, `verificationToken`) VALUES
(1, 'applicant1', '$2a$10$loFASHE9a41ei2A4wQSBC.TNcxsYxmcQy/fCbF6ML9jR2TD6eUV..', 'applicant1@system.com', NULL, NULL, NULL),
(2, 'Operational_director', '$2a$10$xxAvlTZn0zhIWSxoTyyHv.zXBG.r.Ki8ZZU81/LgZqIscp7WQE5Be', 'Operational_director@system.com', NULL, NULL, NULL),
(3, 'Fabtech_admin', '$2a$10$6DXyeS84ILE8XCswkwlH7e4VFkfOwvMjkchoICKPm6zmOo3UOw3e6', 'Fabtech_admin@system.com', NULL, NULL, NULL),
(4, 'Site_sv_engineer', '$2a$10$F5JDzjRmhmv1Ia/8Duthz.u0RWFw.c0WToxh47UhE.N3aauy4ITJK', 'Site_sv_engineer@system.com', NULL, NULL, NULL),
(5, 'Top_management', '$2a$10$1WIGSvTXPneKJNNtj2tuG.F68vpI6H6CQGJlZ7UqTDosa/NSGz0i.', 'Top_management@system.com', NULL, NULL, NULL),
(30, 'Adam Mikail ', '$2a$10$7i5E4p1tJLKFAhCiAq7yWenrhsBjagqkMVPHQ1GR6CqNiQJI5BQ3G', 'adam@system.com', NULL, NULL, NULL),
(32, 'Fahimul', '$2a$10$K/rW7T3Fmj4VWfdTCXxQHeKyyoh1nHKZfufCM.yVnnOcl4ISQzdxe', 'fahimul.chowdhury@gmail.com', NULL, NULL, NULL),
(35, 'asyraframli', '$2a$10$0/pb/3GaD3/2Kh4K2a1iLu6VoXaK399Qhl7dNWgX2D71t/CNn9GWi', 'acapramli13@gmail.com', NULL, NULL, NULL),
(46, 'Muhammad Izzad Rasyidi Bin Jahan', '$2a$10$X6sSAOiH4P7Dl9JUkxPQIuMUaSwWjkS95Me6aHzGEdRHitv0d/Fku', NULL, NULL, NULL, NULL),
(47, 'User Baru', '$2a$10$0YTY2/WaRCLElRJSxMKkoe6/ObTJjZT71q8f7aVYGBd7pZypWG6Eu', 'userbaru@system.com', NULL, NULL, NULL),
(48, 'Latipah', '$2a$10$IuGEmdoZsZGTKX8G4aTRuOJrsjOB9cqACUgCccGR4FezawylPzAUW', 'latipah@system.com', NULL, NULL, NULL),
(49, 'Ahmad', '$2a$10$1LSkq1DEEfl.UoTOQyl8CuOOfdyZ5XAeAIcS8hQATgaqDtJO6579e', 'ahmad@system.com', NULL, NULL, NULL),
(50, 'Ali', '$2a$10$R1WhTJY5/Fa7S1YGwZlg3.RIUQ0lIbxk1TSrHxMTCJJ4jOje3jGkO', 'ali@system.com', NULL, NULL, NULL),
(61, 'supervisor', '$2a$10$LWc2IsJTuABTlbPtz/3Iu.bxv3neu7WlUFRRgufCa5CvR.5zjRro2', 'sv@system.com', NULL, NULL, NULL),
(62, 'supervisor2', '$2a$10$cDUHIomyhODkHlJ2gOqdeuveR47FgREfqZ3afS0VkSByI0SA.TTlC', 'sv2@system.com', NULL, NULL, NULL),
(63, 'applicant12', '$2a$10$WzKtDlIVmD7p/qutgHEGQeifExO9Yc3M2QjjENkI4Z9HUb7LvpRAS', 'app12@system.com', NULL, NULL, NULL),
(64, 'Deen', '$2a$10$n5Aae6ZRA3oKb//7oSRZbe3.SCVqZA.vWXMwccSibC8mcg./xFN.i', 'deen@system.com', NULL, NULL, NULL),
(65, 'Redza', '$2a$10$XDZzcovBXxCEbiCPMaDmkufGqnK8vidfUW8FwppPERpzWifoXRjbm', 'redza@system.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fbuserdetails`
--

CREATE TABLE `fbuserdetails` (
  `id` int(11) NOT NULL,
  `user_icno` varchar(512) DEFAULT NULL,
  `user_phoneno` varchar(512) DEFAULT NULL,
  `user_address` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fbuserdetails`
--

INSERT INTO `fbuserdetails` (`id`, `user_icno`, `user_phoneno`, `user_address`, `user_id`) VALUES
(1, NULL, NULL, NULL, 6),
(2, NULL, NULL, NULL, 7),
(3, NULL, NULL, NULL, 19),
(4, NULL, NULL, NULL, 20),
(5, NULL, NULL, NULL, 21),
(6, NULL, NULL, NULL, 22),
(7, NULL, NULL, NULL, 30),
(8, NULL, NULL, NULL, 31),
(9, NULL, NULL, NULL, 32),
(10, NULL, NULL, NULL, 35),
(11, NULL, NULL, NULL, 47),
(12, NULL, NULL, NULL, 48),
(13, NULL, NULL, NULL, 49),
(14, NULL, NULL, NULL, 50),
(15, NULL, NULL, NULL, 51),
(26, NULL, NULL, NULL, 61),
(27, NULL, NULL, NULL, 62),
(28, NULL, NULL, NULL, 63),
(29, NULL, NULL, NULL, 64),
(30, NULL, NULL, NULL, 65);

-- --------------------------------------------------------

--
-- Table structure for table `jobsavailable`
--

CREATE TABLE `jobsavailable` (
  `id` int(11) NOT NULL,
  `job_name` varchar(512) DEFAULT NULL,
  `job_type` varchar(512) DEFAULT NULL,
  `job_description` varchar(512) DEFAULT NULL,
  `job_scope` varchar(512) DEFAULT NULL,
  `job_responsible` varchar(512) DEFAULT NULL,
  `job_location` varchar(512) DEFAULT NULL,
  `job_requirement1` varchar(512) DEFAULT NULL,
  `job_requirement2` varchar(512) DEFAULT NULL,
  `job_close` varchar(512) DEFAULT NULL,
  `job_start` varchar(512) DEFAULT NULL,
  `job_end` varchar(512) DEFAULT NULL,
  `application_type` varchar(512) DEFAULT NULL,
  `rateperhour` varchar(512) DEFAULT NULL,
  `no_position` varchar(512) DEFAULT NULL,
  `isHide` tinyint(1) DEFAULT NULL,
  `isClose` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobsavailable`
--

INSERT INTO `jobsavailable` (`id`, `job_name`, `job_type`, `job_description`, `job_scope`, `job_responsible`, `job_location`, `job_requirement1`, `job_requirement2`, `job_close`, `job_start`, `job_end`, `application_type`, `rateperhour`, `no_position`, `isHide`, `isClose`) VALUES
(17, 'Weldingdong', 'Welding', 'Welding at the provided site', 'Welding scope', 'Responsible to welding and check the stated parts.', 'Pengerang', 'Welding Cert 6G', 'GTAW', '2019-12-16', '2019-12-15', '2019-12-20', 'Open', '40', '10', 0, 0),
(18, 'Driver', 'Driver', 'Drive the company vehicles', 'Driving scope', 'Drive the company vehicles when there are outsides meeting', 'Kuala Lumpur', 'Driving license', 'Local worker', '2019-12-17', '2019-12-19', '2020-01-31', 'Open', '50', '5', 0, 0),
(19, 'Rigging', 'Rigging', 'A person that can do the rigging works at the site', 'Rigging scope', 'Responsible for all the rigging works', 'Selangor', 'Rigging Certificates', 'Local/Foreigner', '2019-12-14', '2019-12-16', '2019-12-20', 'Invite Only', '50', '3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobsinvitation`
--

CREATE TABLE `jobsinvitation` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  `job_available_id` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobsinvitation`
--

INSERT INTO `jobsinvitation` (`id`, `isDelete`, `job_available_id`, `applicant_id`) VALUES
(1, 1, 19, 2),
(9, NULL, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `listissuesstatus`
--

CREATE TABLE `listissuesstatus` (
  `id` int(11) NOT NULL,
  `issues_title` varchar(512) NOT NULL,
  `issues_datetime` datetime NOT NULL,
  `issues_status` varchar(512) NOT NULL,
  `issues_in` varchar(512) NOT NULL,
  `issues_description` varchar(512) NOT NULL,
  `issues_attachment` varchar(512) NOT NULL,
  `sv_verify` varchar(512) NOT NULL,
  `client_rep_verify` varchar(512) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `msg_title` varchar(512) NOT NULL,
  `msg_content` varchar(512) NOT NULL,
  `msg_datetime` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `msg_title`, `msg_content`, `msg_datetime`, `user_id`) VALUES
(4, 'Berita Baik', 'Semua naik gaji tahun ni!', '2019-11-23 12:56:29', 3),
(5, 'Great News', 'Dear Applicant, please check your status of your application. ', '2019-11-23 18:6:36', 3),
(6, 'I\'m Sleepy', 'yeah , I feel sleepy.', '2019-11-25 16:0:35', 3),
(7, 'helo', 'testing', '2019-11-25 16:4:9', 3),
(8, 'Big News', 'Just Kidding', '2019-11-25 16:18:0', 3),
(10, 'qqsqs', 'sfsfefefe', '2019-11-25 16:19:56', 3),
(12, 'Berita Harian', 'Every applicant must check their applicant first!', '2019-11-26 15:49:32', 3),
(24, 'Chapter 1 resubmit 1', 'uvuvuuwuewueuweuwe osas', '2019-11-26 16:36:30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `operationaldirector`
--

CREATE TABLE `operationaldirector` (
  `id` int(11) NOT NULL,
  `od_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operationaldirector`
--

INSERT INTO `operationaldirector` (`id`, `od_name`, `user_id`) VALUES
(7, 'Muhammad Izzad Rasyidi Bin Jahan', 46);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_title` varchar(512) DEFAULT NULL,
  `post_content` varchar(512) DEFAULT NULL,
  `post_datetime` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_title`, `post_content`, `post_datetime`, `user_id`) VALUES
(1, 'Test New Post', 'Test Post Content', '2019-12-19 11:22:59', 2);

-- --------------------------------------------------------

--
-- Table structure for table `projectassigned`
--

CREATE TABLE `projectassigned` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectassigned`
--

INSERT INTO `projectassigned` (`id`, `project_id`, `applicant_id`, `sv_eng_id`, `job_id`) VALUES
(54, 2, 10, 6, 18),
(55, 2, 2, 6, 19),
(56, 3, 2, 6, 17),
(57, 3, 2, 7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `projectcreated`
--

CREATE TABLE `projectcreated` (
  `id` int(11) NOT NULL,
  `project_name` varchar(512) DEFAULT NULL,
  `project_duration` varchar(512) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectcreated`
--

INSERT INTO `projectcreated` (`id`, `project_name`, `project_duration`, `service_id`, `project_id`) VALUES
(1, 'Welding WO', '2', 2, 1),
(2, 'Fitter WO', '2 month(s)', 1, 2),
(3, 'WO baru', '6 Day(s)', 2, 3),
(4, 'WO baru lagi', '4 Month(s)', 3, 4),
(5, 'Test WO', '1 Week(s)', 1, 5),
(7, 'Driver WO', '2 Month(s)', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `id` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`id`, `details`, `project_id`) VALUES
(31, 'testtest', 1),
(32, 'test 1', 1),
(33, 'testtest', 2),
(34, 'test 1', 4),
(43, 'bbbb', 6),
(44, 'aaaa', 6),
(45, 'ccccc', 6),
(46, 'abcd', 4),
(47, 'efgh', 4),
(48, 'tambah', 4),
(49, 'detail 6', 6);

-- --------------------------------------------------------

--
-- Table structure for table `requestlist`
--

CREATE TABLE `requestlist` (
  `id` int(11) NOT NULL,
  `request_type` varchar(512) NOT NULL,
  `request_datetime` varchar(512) NOT NULL,
  `request_status` varchar(512) NOT NULL,
  `sv_eng_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Applicant', NULL, '2019-11-12 09:46:12', '2019-11-12 09:46:12'),
(2, 'Operational_director', NULL, '2019-11-12 09:46:12', '2019-11-12 09:46:12'),
(3, 'Fabtech_admin', NULL, '2019-11-12 09:46:12', '2019-11-12 09:46:12'),
(4, 'Site_sv_engineer', NULL, '2019-11-12 09:46:12', '2019-11-12 09:46:12'),
(5, 'Top_management', NULL, '2019-11-12 09:46:12', '2019-11-12 09:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `rolemapping`
--

CREATE TABLE `rolemapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rolemapping`
--

INSERT INTO `rolemapping` (`id`, `principalType`, `principalId`, `roleId`) VALUES
(1, 'User', '1', 1),
(2, 'User', '2', 2),
(3, 'User', '3', 3),
(4, 'User', '4', 4),
(5, 'User', '5', 5),
(6, 'USER', '6', 1),
(7, 'USER', '7', 1),
(8, 'USER', '19', 1),
(9, 'USER', '20', 1),
(10, 'USER', '21', 1),
(11, 'USER', '22', 1),
(12, 'USER', '30', 1),
(13, 'USER', '31', 1),
(14, 'USER', '32', 1),
(15, 'USER', '35', 1),
(16, 'USER', '40', 1),
(17, 'USER', '41', 1),
(18, 'USER', '42', 1),
(19, 'USER', '43', 1),
(20, 'USER', '44', 1),
(21, 'USER', '47', 1),
(22, 'USER', '48', 1),
(23, 'USER', '49', 4),
(24, 'USER', '50', 2),
(25, 'USER', '51', 4),
(26, 'USER', '52', 4),
(27, 'USER', '53', 4),
(28, 'USER', '54', 4),
(29, 'USER', '55', 4),
(30, 'USER', '56', 2),
(31, 'USER', '57', 4),
(32, 'USER', '58', 4),
(33, 'USER', '59', 4),
(34, 'USER', '60', 4),
(35, 'USER', '61', 4),
(36, 'USER', '62', 4),
(37, 'USER', '63', 1),
(38, 'USER', '64', 1),
(39, 'USER', '65', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sitesvengineer`
--

CREATE TABLE `sitesvengineer` (
  `id` int(11) NOT NULL,
  `sv_eng_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitesvengineer`
--

INSERT INTO `sitesvengineer` (`id`, `sv_eng_name`, `user_id`) VALUES
(6, 'supervisor', 61),
(7, 'supervisor2', 62);

-- --------------------------------------------------------

--
-- Table structure for table `taskdetails`
--

CREATE TABLE `taskdetails` (
  `id` int(11) NOT NULL,
  `task_title` varchar(512) NOT NULL,
  `task_details` varchar(512) NOT NULL,
  `task_datetime` varchar(512) NOT NULL,
  `task_status` varchar(512) NOT NULL,
  `top_management_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topmanagement`
--

CREATE TABLE `topmanagement` (
  `id` int(11) NOT NULL,
  `top_management_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `typeofservices`
--

CREATE TABLE `typeofservices` (
  `id` int(11) NOT NULL,
  `service_name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typeofservices`
--

INSERT INTO `typeofservices` (`id`, `service_name`) VALUES
(1, 'Marine'),
(2, 'Offshore'),
(3, 'Supply');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicantapplication`
--
ALTER TABLE `applicantapplication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicantcertificates`
--
ALTER TABLE `applicantcertificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicanttrades`
--
ALTER TABLE `applicanttrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadcastmessage`
--
ALTER TABLE `broadcastmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailylogreport`
--
ALTER TABLE `dailylogreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailytimesheet`
--
ALTER TABLE `dailytimesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailytimesheetdetails`
--
ALTER TABLE `dailytimesheetdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabtechadmin`
--
ALTER TABLE `fabtechadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbuser`
--
ALTER TABLE `fbuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbuserdetails`
--
ALTER TABLE `fbuserdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsavailable`
--
ALTER TABLE `jobsavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsinvitation`
--
ALTER TABLE `jobsinvitation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listissuesstatus`
--
ALTER TABLE `listissuesstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operationaldirector`
--
ALTER TABLE `operationaldirector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectassigned`
--
ALTER TABLE `projectassigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectcreated`
--
ALTER TABLE `projectcreated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestlist`
--
ALTER TABLE `requestlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolemapping`
--
ALTER TABLE `rolemapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`);

--
-- Indexes for table `sitesvengineer`
--
ALTER TABLE `sitesvengineer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskdetails`
--
ALTER TABLE `taskdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topmanagement`
--
ALTER TABLE `topmanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeofservices`
--
ALTER TABLE `typeofservices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `applicantapplication`
--
ALTER TABLE `applicantapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `applicantcertificates`
--
ALTER TABLE `applicantcertificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `applicanttrades`
--
ALTER TABLE `applicanttrades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `broadcastmessage`
--
ALTER TABLE `broadcastmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dailylogreport`
--
ALTER TABLE `dailylogreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailytimesheet`
--
ALTER TABLE `dailytimesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailytimesheetdetails`
--
ALTER TABLE `dailytimesheetdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fabtechadmin`
--
ALTER TABLE `fabtechadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fbuser`
--
ALTER TABLE `fbuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `fbuserdetails`
--
ALTER TABLE `fbuserdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jobsavailable`
--
ALTER TABLE `jobsavailable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobsinvitation`
--
ALTER TABLE `jobsinvitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `listissuesstatus`
--
ALTER TABLE `listissuesstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `operationaldirector`
--
ALTER TABLE `operationaldirector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projectassigned`
--
ALTER TABLE `projectassigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `projectcreated`
--
ALTER TABLE `projectcreated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `requestlist`
--
ALTER TABLE `requestlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rolemapping`
--
ALTER TABLE `rolemapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sitesvengineer`
--
ALTER TABLE `sitesvengineer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taskdetails`
--
ALTER TABLE `taskdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topmanagement`
--
ALTER TABLE `topmanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeofservices`
--
ALTER TABLE `typeofservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
