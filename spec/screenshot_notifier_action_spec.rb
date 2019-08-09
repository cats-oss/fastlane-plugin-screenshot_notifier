describe Fastlane::Actions::ScreenshotNotifierAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The screenshot_notifier plugin is working!")

      Fastlane::Actions::ScreenshotNotifierAction.run(nil)
    end
  end
end
