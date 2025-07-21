-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/07/2025 às 00:20
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mundo_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `token_recuperacao` varchar(255) DEFAULT NULL,
  `token_expira_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `avatar`, `token_recuperacao`, `token_expira_em`) VALUES
(1, 'Caputina', 'bailarinacaputina@gmail.com', '$2y$10$Y6nKp/xfUs1i.wFStwF/2uz80zAAYxK/3GLf6SDSK9wOAKSLOyTt6', 'avatar7.png', NULL, NULL),
(2, 'Bombardino', 'enzo_biba@gmail.com', '$2y$10$dt566fwfsgI7rCLnfWCV1ebfAeSVmdXFlJKbRWRwiSUQfRnWK9tGa', '', NULL, NULL),
(3, 'Enzin', 'BRBR@gmail.com', '$2y$10$7nWMjh.CBFwrm9u/0KMyr.h46QZ1O6pt7sBFwY8PuYMqPDNfM.Z0C', '', NULL, NULL),
(4, 'Jorge', 'jorge123@gmail.com', '$2y$10$LPnd.MvWMOs0CixOtSFL9eyzjs2m3rMEybqlJhngKCe0NjUyoxoge', '', NULL, NULL),
(5, 'Jorge', 'jorge1235@gmail.com', '$2y$10$WdEuyPnT/d0Qc6qfWSSSIOLuXJOkP7Qx7kFHdK4iJzO33dJ3h4hHu', '', NULL, NULL),
(6, 'Jorge', 'jorge12356@gmail.com', '$2y$10$0qmfSyTzos210oJVVvQxV.oE7VHzpZHUcliLDY3kpbPfunc.uK7Um', '', NULL, NULL),
(7, 'Lucas', 'lucas123@gmail.com', '$2y$10$r21QTEy3ohU92s8R1MNvZ.plVGrVt9WNKFfIQEn7c5htOIrBaFSJG', '', NULL, NULL),
(8, 'Gabruela', 'Gabriela123@gmail.com', '$2y$10$Yw0t6sC0encAq9My5DiOnuy4VROH9hSW2gCOfPqxywqrhcc076MYC', '', NULL, NULL),
(10, 'Lucas', 'jorge12300@gmail.com', '$2y$10$aKfo6P7QoVSe418b0FQDMOdHgW8v3x31ea9ME9LKh.F52TWPtnJzq', '', NULL, NULL),
(11, 'Lucas', 'lucas00@gmail.com', '$2y$10$FAfPzv3AmYu2JqrwAjhL4uwlyDhdSRnzJK4RXSZ2a7NclcojuBuJW', '', NULL, NULL),
(12, 'Jose', 'jose@gmail.com', '$2y$10$TzEl/FaJQzpvDUrpgesEQuRAkRnEKbx14qxhcdhQOEkd.dvUykTUm', '', NULL, NULL),
(13, 'Thais', 'Thais1234567@gmail.com', '$2y$10$9vxViBiiSdZ4w/eJK3adE.nJHPj7pmR0cD1EtTTS1cB04GXWQH/Nu', 'avatar2.png', NULL, NULL),
(14, 'Enzo', 'enzindograu@gmail.com', '$2y$10$I6V7fx5NXsNq.6IjNnw1P.C0xyf16vv9d.O2dihKbtv5.QKbBObyy', '', NULL, NULL),
(15, 'Enzo', 'enzindograu2@gmail.com', '$2y$10$2U0UTwSr8ffMgjiel3ekMOusFmzM.6kVi4K6wsKtz.Kqr981gCFha', '', NULL, NULL),
(16, 'jorge', 'pi@gmail.com', '$2y$10$YPnJmxg5Rtjf09IUCKHMEOo4nAxVrTySF.btdHiu/HLkQSCRTuJcK', 'avatar6.png', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `token_recuperacao` (`token_recuperacao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
