<?php declare(strict_types=1);

use ASPTest\Commands\UserCreateCommand;
use PHPUnit\Framework\TestCase;
use Symfony\Component\Console\Application;
use Symfony\Component\Console\Tester\CommandTester;

final class CreateUserTest extends TestCase
{

    public function testCanBeCreatedFromValidUser(): void
    {
        $app = new Application();
        $app->add(new UserCreateCommand());

        $command = $app->find('USER:CREATE');

        $commandTester = new CommandTester($command);
        $commandTester->execute([
            'first_name' => "TEST_1_FirstName",
            'last_name' => 'TEST_1_LastName',
            'email' => 'TEST_1_FL30@test.com.br',
            'age' => 30
        ]);

        $this->addToAssertionCount(1);
        $output = $commandTester->getDisplay();
        print_r($output);
    }

    public function testCanBeCreatedFromValidUserAgeEmpty(): void
    {
        $app = new Application();
        $app->add(new UserCreateCommand());

        $command = $app->find('USER:CREATE');

        $commandTester = new CommandTester($command);
        $commandTester->execute([
            'first_name' => "TEST_2_FirstName",
            'last_name' => 'TEST_2_LastName',
            'email' => 'TEST_2_FL@test.com.br',
            null
        ]);

        $this->addToAssertionCount(1);
        $output = $commandTester->getDisplay();
        print_r($output);
    }

}