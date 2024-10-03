import { test, expect } from '@playwright/test';

test.describe('Visits the QAuth login page', () => {

    test('Visit and assert user is on Login Page', async ({ page }) => {
        await page.goto('https://smoothwall.auth.qoria-stg.cloud/?redirect_uri=https%3A%2F%2Fportal-qa.smoothwall.cloud');
        await expect(page.getByTestId('username-input')).toBeVisible();
    });
});
