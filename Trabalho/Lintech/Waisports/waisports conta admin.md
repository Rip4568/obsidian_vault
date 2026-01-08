\App\Models\User::create([
    'name' => 'Admin',
    'email' => 'admin@waisports.com.br',
    'password' => Hash::make('admin123'),
    'role' => 'admin',
    'email_verified_at' => now(),
    'registration_completed' => true,
    'saw_subscription_modal' => true,
]);