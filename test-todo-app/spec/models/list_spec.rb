require 'rails_helper'

RSpec.describe List, type: :model do


  describe '#complete_all_tasks!' do

    it 'should change all tasks complete value to true' do
      list = List.create(name: "test")

      task1 = Task.create(complete: false, list_id: list.id)
      task2 = Task.create(complete: false, list_id: list.id)
      task3 = Task.create(complete: false, list_id: list.id)

      list.complete_all_tasks!

      expect(list.tasks.where(complete: true).count).to eq(3)

      # list.tasks.each do |task|
      #   expect(task.complete).to eq(true)
      # end
    end
  end

  describe '#snooze_all_tasks!' do
    it 'should change the deadline of each task to an hour ahead' do
      list = List.create(name: "test")
      time = Time.now

      task1 = Task.create(deadline: time, list_id: list.id)
      task2 = Task.create(deadline: time, list_id: list.id)
      task3 = Task.create(deadline: time, list_id: list.id)

      list.snooze_all_tasks!

      expect(list.tasks.where(deadline: time + 1.hour).count).to eq(3)

    end
  end

  describe '#total_duration' do
  end

  describe '#incomplete_tasks' do
  end

  describe '#favorite_tasks' do
  end




end

