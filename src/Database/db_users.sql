DROP TABLE IF EXISTS `users`;

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
                         `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                         `first_name` varchar(255) NOT NULL COLLATE utf8mb4_unicode_ci ,
                         `last_name` varchar(255) NOT NULL COLLATE utf8mb4_unicode_ci ,
                         `email` varchar(255) NOT NULL UNIQUE COLLATE utf8mb4_unicode_ci ,
                         `age` int NULL DEFAULT NULL,
                         `password` varchar(255) NULL COLLATE utf8mb4_unicode_ci,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `age`, `password`) VALUES
(1, 'Malu', 'Siqueira', 'malusiqueira@gmail.com', 8, ''),
(2, 'Anaju', 'Siqueira', 'anajusiqueira@gmail.com', NULL, ''),
(3, 'Rosana', 'Conrado', 'rosana.conrado@test.com', 36, '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;