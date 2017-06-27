require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#toggle_complete!' do
    it 'should switch complete attribute to false if it began as true. ' do
      task = Task.create(complete: true)
      task.toggle_complete!
      expect(task.complete).to eq(false)
    end

    it 'should switch complete attribute to true if it began as false' do
      task = Task.create(complete: false)
      task.toggle_complete!
      expect(task.complete).to eq(true)
    end
  end


  describe '#toggle_favorite!' do
    it 'should switch favorite to false if it began as true.' do
      task = Task.create(favorite: true)
      task.toggle_favorite!
      expect(task.favorite).to eq(false)
    end

    it 'should switch favorite to true if it began as false' do
      task = Task.create(favorite: false)
      task.toggle_favorite!
      expect(task.favorite).to eq(true)
    end
  end

  describe '#overdue?' do
    it 'should return true if the deadline is before now' do
      task = Task.create(deadline: Time.now)
      expect(task.overdue?).to eq(true)
    end

    it 'should return false if the deadline is in the future.' do
      task = Task.create(deadline: Time.now + 1.year)
      expect(task.overdue?).to eq(false)
    end
  end

  describe '#increment_priority!' do
    it 'should increase priority to 3 if it started as 2' do
      task = Task.create(priority: 2)
      task.increment_priority!
      expect(task.priority).to eq(3)
    end

    it 'should it be called when priority is 10, the value should remain 10' do
      task = Task.create(priority: 10)
      task.increment_priority!
      expect(task.priority).to eq(10)
    end
  end

  describe '#decrement_priority!' do
    it 'should derease priority to 1 if priority started as 2' do
      task = Task.create(priority: 2)
      task.decrement_priority!
      expect(task.priority).to eq(1)
    end

    it 'should not decrease priority if priority is set to 1' do
      task = Task.create(priority: 1)
      task.decrement_priority!
      expect(task.priority).to eq(1)
    end
  end

  describe '#snooze_hour!' do
    it 'should increase deadline to 14:00 if deadline was set to 13:00' do
      time = Time.now
      task = Task.create(deadline: time)
      task.snooze_hour!
      expect(task.deadline).to eq(time + 1.hour)
    end
  end





end


