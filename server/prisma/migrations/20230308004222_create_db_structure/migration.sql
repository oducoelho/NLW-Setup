-- CreateTable
CREATE TABLE `habits` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `habit_week_days` (
    `id` VARCHAR(191) NOT NULL,
    `habit_id` VARCHAR(191) NOT NULL,
    `week_day` INTEGER NOT NULL,

    UNIQUE INDEX `habit_week_days_habit_id_week_day_key`(`habit_id`, `week_day`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `days` (
    `id` VARCHAR(191) NOT NULL,
    `date` DATETIME(3) NOT NULL,

    UNIQUE INDEX `days_date_key`(`date`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `day_habits` (
    `id` VARCHAR(191) NOT NULL,
    `day_id` VARCHAR(191) NOT NULL,
    `habit_id` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `day_habits_day_id_habit_id_key`(`day_id`, `habit_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `habit_week_days` ADD CONSTRAINT `habit_week_days_habit_id_fkey` FOREIGN KEY (`habit_id`) REFERENCES `habits`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `day_habits` ADD CONSTRAINT `day_habits_day_id_fkey` FOREIGN KEY (`day_id`) REFERENCES `days`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `day_habits` ADD CONSTRAINT `day_habits_habit_id_fkey` FOREIGN KEY (`habit_id`) REFERENCES `habits`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
